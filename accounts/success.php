<?php

$UniqueName  = "Successfully Transfer";
require($_SERVER['DOCUMENT_ROOT'] . "/accounts/layout/headergeneral.php");
// if ($page['kyc_status'] == '1' and $row['kyc_status'] == '0') {
//     header("location:./pending-kyc.php");
//     exit;
// }


if (@!$_SESSION['internetid']) {
    header("location:../login.php");
    die;
}


if (!isset($_SESSION['is_transfer'])) {
    header("Location:./dashboard.php");
}

if (!isset($_SESSION['dom_transfer'])) {
    header("Location:./dashboard.php");
}


unset($_SESSION['is_dom_transfer']);

unset($_SESSION['is_wire_transfer']);





//TEMP TRANSACTION FETCH
$sql = "SELECT * FROM transactions WHERE internetid =:internetid ORDER BY trans_id DESC LIMIT 1";
$stmt = $conn->prepare($sql);
$stmt->execute([
    'internetid' => $_SESSION['internetid']
]);
$result = $stmt->fetch(PDO::FETCH_ASSOC);
$transStatus = TranStatus($result);


$amount = $result['amount'];
$transactiontype = $result['trans_type'];







?>







<!--  BEGIN CONTENT PART  -->
<div id="content" class="main-content">
    <div class="layout-px-spacing">
        <div class="row invoice layout-top-spacing layout-spacing">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">

                <div class="doc-container">

                    <div class="row">

                        <div class="col-xl-9">

                            <div class="invoice-container">
                                <div class="invoice-inbox">

                                    <div id="ct" class="">

                                        <div class="invoice-00001">
                                            <div class="content-section">

                                                <div class="inv--head-section inv--detail-section">

                                                    <div class="row">

                                                        <div class="col-sm-6 col-12 mr-auto">
                                                            <div class="d-flex">
                                                                <img src="<?= $web_url ?>/assets/images/logo/logo2.png" alt="company" width="300">
                                                                <h3 class="in-heading text-white align-self-center"><?= $page['website_name'] ?></h3>
                                                            </div>
                                                        </div>

                                                        <div class="col-sm-6 text-sm-right">
                                                            <p class="inv-list-number"><span class="inv-title">Receipt </span> <span class="inv-number">#<?= $result['refrence_id'] ?></span></p>
                                                            <h3><?= $transStatus ?></h3>
                                                        </div>

                                                        <div class="col-sm-6 align-self-center mt-3">
                                                            <p class="inv-street-addr"><?= $page['website_address'] ?></p>
                                                            <p class="inv-email-address"><?= $page['website_email'] ?></p>
                                                            <p class="inv-email-address">+<?= $page['website_tel'] ?></p>
                                                        </div>
                                                        <div class="col-sm-6 align-self-center mt-3 text-sm-right">
                                                            <p class="inv-created-date"><span class="inv-title"> </p>
                                                        </div>

                                                    </div>

                                                </div>





                                                <div class="inv--product-table-section">
                                                    <center>
                <p>You will be redirected in 30 seconds</p>
            </center>
                                                    <script>
                var timer = setTimeout(function() {
                    window.location = '<?= $web_url ?>/accounts/dashboard.php'
                }, 80000);
            </script>
                                                    <div class="table-responsive">

                                                        <?php
                                                        if ($transactiontype == 'Wire transfer') {
                                                        ?>
                                                            <table class="table">

                                                                <tbody>
                                                                    <tr>
                                                                        <td>Transaction Amount</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $currency ?><?php echo number_format($amount, 2, '.', ','); ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Beneficiary Name</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['account_name'] ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Beneficiary Account</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['account_number'] ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Bank Name</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['bank_name'] ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Routing or SWIFT</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['routine_number'] ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Account Type</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['account_type'] ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Bank Country</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['bank_country'] ?></td>
                                                                        <td></td>
                                                                    </tr>




                                                                    <tr>
                                                                        <td>Transaction Type</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['trans_type'] ?></td>
                                                                        <td></td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Payment Account</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $TransType ?></td>
                                                                        <td></td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Transaction Status</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['trans_status'] ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Transaction Date</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['created_at'] ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>



                                                        <?php
                                                        } elseif ($transactiontype == 'Domestic transfer') {
                                                        ?>
                                                            <table class="table">

                                                                <tbody>
                                                                    <tr>
                                                                        <td>Transaction Amount</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $currency ?><?php echo number_format($amount, 2, '.', ','); ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Beneficiary Name</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['account_name'] ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Beneficiary Account</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['account_number'] ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Bank Name</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['bank_name'] ?></td>
                                                                        <td></td>
                                                                    </tr>





                                                                    <tr>
                                                                        <td>Transaction Type</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['trans_type'] ?></td>
                                                                        <td></td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Payment Account</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $TransType ?></td>
                                                                        <td></td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Transaction Status</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['trans_status'] ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Transaction Date</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['created_at'] ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>


                                                        <?php
                                                        } elseif ($transactiontype == 'Self transfer') {
                                                        ?>

                                                            <table class="table">

                                                                <tbody>
                                                                    <tr>
                                                                        <td>Transaction Amount</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $currency ?><?php echo number_format($amount, 2, '.', ','); ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Beneficiary Name</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $full_name ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Beneficiary Account</td>

                                                                        <td class="text-right"></td>

                                                                        <?php
                                                                        if ($result['payment_account'] = "savings_account") {
                                                                        ?>
                                                                            <td>My Current Account: <strong>(<?= $row['current_acctno'] ?>)</td>

                                                                        <?php
                                                                        } else {
                                                                        ?>

                                                                            <td>My Savings Account: <strong>(<?= $row['savings_acctno'] ?>)</td>



                                                                        <?php
                                                                        }
                                                                        ?>



                                                                        <td></td>
                                                                    </tr>




                                                                    <tr>
                                                                        <td>Transaction Type</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['trans_type'] ?></td>
                                                                        <td></td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Payment Account</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $TransType ?></td>
                                                                        <td></td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Transaction Status</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['trans_status'] ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Transaction Date</td>

                                                                        <td class="text-right"></td>
                                                                        <td><?= $result['created_at'] ?></td>
                                                                        <td></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>



                                                        <?php
                                                        } else {
                                                        ?>



                                                        <?php
                                                        }
                                                        ?>





                                                    </div>
                                                </div>

                                                <div class="inv--total-amounts">

                                                    <div class="row mt-4">
                                                        <div class="col-sm-5 col-12 order-sm-0 order-1">
                                                        </div>
                                                        <div class="col-sm-7 col-12 order-sm-1 order-0">
                                                            <div class="text-sm-right">
                                                                <div class="row">


                                                                    <div class="col-sm-8 col-7 grand-total-title">
                                                                        <h4 class="">Grand Total : </h4>
                                                                    </div>
                                                                    <div class="col-sm-4 col-5 grand-total-amount">
                                                                        <h4 class=""><?= $currency ?><?php echo number_format($amount, 2, '.', ','); ?></h4>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="inv--note">

                                                    <div class="row mt-4">
                                                        <div class="col-sm-12 col-12 order-sm-0 order-1">
                                                            <p><strong>NOTE: </strong> If you have any questions or would like more information, please call our Contact Centre on <?= $page['website_tel'] ?> or send an email to <?= $page['website_email'] ?></p>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>

                                    </div>


                                </div>

                            </div>

                        </div>

                        <div class="col-xl-3">

                            <div class="invoice-actions-btn">

                                <div class="invoice-action-btn">

                                    <div class="row">
                                        <!-- <div class="col-xl-12 col-md-3 col-sm-6">
                                            <a href="javascript:void(0);" class="btn btn-primary btn-send">New Transfer</a>
                                        </div> -->

                                        <div class="col-xl-12 col-md-3 col-sm-6">
                                            <a href="./create-ticket.php" class="btn btn-danger btn-download">Report Transaction</a>
                                        </div>

                                    </div>
                                </div>

                            </div>

                        </div>


                    </div>


                </div>

            </div>
        </div>
    </div>
    <div class="footer-wrapper">
        <div class="footer-section f-section-1">
        </div>
        <div class="footer-section f-section-2">
            <p class="">Copyright © 2024 <a target="_blank" href="/"><?= $page['website_name'] ?></a>, All rights reserved.</p>
        </div>
    </div>



</div>
<!-- END MAIN CONTAINER -->

<!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
<script src="<?= $web_url ?>/ui/assets/js/libs/jquery-3.1.1.min.js"></script>
<script src="<?= $web_url ?>/ui/bootstrap/js/popper.min.js"></script>
<script src="<?= $web_url ?>/ui/bootstrap/js/bootstrap.min.js"></script>
<script src="<?= $web_url ?>/ui/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="<?= $web_url ?>/ui/assets/js/app.js"></script>

<script>
    $(document).ready(function() {
        App.init();
    });
</script>
<script src="<?= $web_url ?>/ui/assets/js/custom.js"></script>
<!-- END GLOBAL MANDATORY SCRIPTS -->
<script src="<?= $web_url ?>/ui/assets/js/apps/invoice-preview.js"></script>
</body>

</html>