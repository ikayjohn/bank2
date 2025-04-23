<?php




$UniqueName  = "Credit/Debit Users";
require($_SERVER['DOCUMENT_ROOT'] . "/admin/layout/header.php");



// Bank Script Developer - Use For Educational Purpose Only

// Other scripts Available


if (isset($_POST['credit'])) {
    $internetid = $_POST['internetid'];
    $amount = $_POST['amount'];
    $description = $_POST['description'];
    $payment_account = $_POST['payment_account'];
    $created_at = $_POST['created_at'];


    $sql = "SELECT * FROM accounts WHERE internetid=:internetid";
    $checkUser = $conn->prepare($sql);
    $checkUser->execute([
        'internetid' => $internetid
    ]);
    $result = $checkUser->fetch(PDO::FETCH_ASSOC);

    if ($payment_account  == "current_account") {


        $tBalance = $amount + $result['current_balance'];
        $sql = "UPDATE accounts SET current_balance=:current_balance WHERE internetid=:internetid";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'current_balance' => $tBalance,
            'internetid' => $internetid
        ]);
    } else {

        $SBalance = $amount + $result['savings_balance'];
        $sql = "UPDATE accounts SET savings_balance=:savings_balance WHERE internetid=:internetid";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            'savings_balance' => $SBalance,
            'internetid' => $internetid
        ]);
    }


    if (true) {
        $refrence_id = uniqid();
        $trans_type = "Credit";
        $transaction_type = "credit";
        $trans_status = "completed";
        $sql = "INSERT INTO transactions (amount,refrence_id,internetid,payment_account,trans_type,transaction_type,trans_status,description,created_at) VALUES(:amount,:refrence_id,:internetid,:payment_account,:trans_type,:transaction_type,:trans_status,:description,:created_at)";
        $tranfered = $conn->prepare($sql);
        $tranfered->execute([
            'amount' => $amount,
            'refrence_id' => $refrence_id,
            'internetid' => $internetid,
            'payment_account' => $payment_account,
            'trans_type' => $trans_type,
            'transaction_type' => $transaction_type,
            'trans_status' => $trans_status,
            'description' => $description,
            'created_at' => $created_at

        ]);



        $full_name = $result['firstname'] . " " . $result['lastname'];
        $user_balance = $result['current_balance'] + $result['savings_balance'];

        $APP_NAME = WEB_TITLE;
        $APP_URL = WEB_URL;
        $SITE_ADDRESS = $page['website_address'];
        $user_email = $result['acct_email'];
        $message = $sendMail->AdminFundingMsg($full_name, $amount, $user_balance, $internetid, $trans_status, $trans_type, $APP_NAME, $APP_URL, $SITE_ADDRESS);
        // User Email
        $subject = "Credit Notification" . "-" . $APP_NAME;
        $email_message->send_mail($user_email, $message, $subject);

        if (true) {
            toast_alert('success', 'Account Funded Successfully', 'Approved');
        } else {
            toast_alert('error', 'Sorry Something Went Wrong');
        }
    }
} else if (isset($_POST['debit'])) {
    $internetid = $_POST['internetid'];
    $amount = $_POST['amount'];
    $description = $_POST['description'];
    $payment_account = $_POST['payment_account'];
    $created_at = $_POST['created_at'];

    $sql = "SELECT * FROM accounts WHERE internetid =:internetid";
    $checkUser = $conn->prepare($sql);
    $checkUser->execute([
        'internetid' => $internetid
    ]);
    $result = $checkUser->fetch(PDO::FETCH_ASSOC);


    if ($payment_account == "savings_account" and $amount > $result['savings_balance']) {
        toast_alert('error', 'Insufficient Savings Balance');
    } elseif ($payment_account == "current_account" and $amount > $result['current_balance']) {
        toast_alert('error', 'Insufficient Current Balance');
    } else {

        if ($payment_account  == "current_account") {


            $tBalance = $result['current_balance'] - $amount;
            $sql = "UPDATE accounts SET current_balance=:current_balance WHERE internetid=:internetid";
            $stmt = $conn->prepare($sql);
            $stmt->execute([
                'current_balance' => $tBalance,
                'internetid' => $internetid
            ]);
        } else {
    
            $SBalance = $result['savings_balance'] - $amount;
            $sql = "UPDATE accounts SET savings_balance=:savings_balance WHERE internetid=:internetid";
            $stmt = $conn->prepare($sql);
            $stmt->execute([
                'savings_balance' => $SBalance,
                'internetid' => $internetid
            ]);
        }

        if (true) {
            $refrence_id = uniqid();
            $trans_type = "Debit";
            $transaction_type = "debit";
            $trans_status = "completed";
            $sql = "INSERT INTO transactions (amount,refrence_id,internetid,payment_account,trans_type,transaction_type,trans_status,description,created_at) VALUES(:amount,:refrence_id,:internetid,:payment_account,:trans_type,:transaction_type,:trans_status,:description,:created_at)";
            $tranfered = $conn->prepare($sql);
            $tranfered->execute([
                'amount' => $amount,
                'refrence_id' => $refrence_id,
                'internetid' => $internetid,
                'payment_account' => $payment_account,
                'trans_type' => $trans_type,
                'transaction_type' => $transaction_type,
                'trans_status' => $trans_status,
                'description' => $description,
                'created_at' => $created_at

            ]);

            $full_name = $result['firstname'] . " " . $result['lastname'];
            $user_balance = $result['current_balance'] + $result['savings_balance'];

            $APP_NAME = WEB_TITLE;
            $APP_URL = WEB_URL;
            $SITE_ADDRESS = $page['website_address'];
            $user_email = $result['acct_email'];
            $message = $sendMail->AdminFundingMsg($full_name, $amount, $user_balance, $internetid, $trans_status, $trans_type, $APP_NAME, $APP_URL, $SITE_ADDRESS);
            // User Email
            $subject = "Debit" . "-" . $APP_NAME;
            $email_message->send_mail($user_email, $message, $subject);

            if (true) {
                toast_alert('success', 'Account Debited Successfully', 'Approved');
            } else {
                toast_alert('error', 'Sorry Something Went Wrong');
            }
        }
    }
}


?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Credit/Debit User
        </h1>
        <ol class="breadcrumb">
            <li><a href="./dashboard.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        </ol>
    </section>



    <!-- Main content -->
    <section class="content">

        <!-- SELECT2 EXAMPLE -->
        <div class="box box-default">
            <div class="box-header with-border">
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
                </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <form method="POST">

                    <div class="row">

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Select user</label>
                                <select name="internetid" class="form-control select2" style="width: 100%;" required>
                                    <option>Select User</option>

                                    <?php
                                    $sql = "select * FROM accounts order by id ASC";
                                    $stmt = $conn->prepare($sql);
                                    $stmt->execute();

                                    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                                        $fullName = $row['firstname'] . " " . $row['lastname']

                                    ?>
                                        <option value="<?= $row['internetid'] ?>">(<?= ucwords($fullName) ?>)<br> <?=$row['acct_email'] ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>
                            <!-- /.form-group -->

                            <!-- /.form-group -->
                        </div>
                        <!-- /.col -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Amount</label>
                                <input type="number" class="form-control" name="amount" placeholder="0" required>
                            </div>

                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Funding Account</label>
                                <select name="payment_account" class="form-control select2" style="width: 100%;" required>
                                    <option>Select Payment Account</option>
                                    <option value="savings_account"><strong></strong> Savings Balance</option>
                                    <option value="current_account"><strong></strong> Current Balance</option>
                                </select>

                            </div>

                        </div>




                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Description</label>
                                <input type="text" class="form-control" name="description" placeholder="description" required>
                            </div>

                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Date</label>
                                <input type="datetime-local" class="form-control" name="created_at" placeholder="00:00:00" required>
                            </div>

                        </div>


                        <!-- /.col -->
                    </div>

                    <!-- /.row -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                <button type="submit" name="credit" class="btn btn-primary">Credit</button>

                <button type="submit" name="debit" class="btn btn-danger">Debit</button>
            </div>
        </div>
        <!-- /.box -->

        </form>


    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->



<?php
require($_SERVER['DOCUMENT_ROOT'] . "/admin/layout/footer.php");

?>