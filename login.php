<?php
ob_start();
session_start();
require_once("./configuration/config.php");
require_once("./configuration/Function/Function.php");
require_once("./configuration/SMS/fns.php");

$message = new message();

require_once("./session.php");
// require_once("/configuration/Function.php");

$sql = "SELECT * FROM settings WHERE id ='1'";
$stmt = $conn->prepare($sql);
$stmt->execute();

$page = $stmt->fetch(PDO::FETCH_ASSOC);

$title = $page['website_name'];

$UniqueName = $title;
$BANK_PHONE = $page['website_tel'];



$viesConn = "SELECT * FROM accounts";
$stmt = $conn->prepare($viesConn);
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);



$title = new pageTitle();
$email_message = new message();
$sendMail = new emailMessage();


if (@$_SESSION['internetid']) {
    header("Location:./accounts/dashboard.php");
}


if (isset($_POST['acct_login'])) {
    $internetid = inputValidation($_POST['login']);
    // $internetid = inputValidation($_POST['internetid']);
    $acct_password = inputValidation($_POST['acct_password']);
    $log = "SELECT * FROM accounts WHERE internetid='$internetid' OR acct_email = '$internetid'";
    $stmt = $conn->prepare($log);
    $stmt->execute();

    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($stmt->rowCount() === 0) {
        toast_alert("error", "Invalid login details");
    } else {
        $validPassword = password_verify($acct_password, $user['acct_password']);
        if ($validPassword === false) {
            toast_alert("error", "Invalid login details");
        } else {
            // if ($user['acct_status'] === 'hold') {
            //     toast_alert("error", "Account on Hold, Kindly contact support to activate your account");
            // } else {
                if (true) {

                    //IP LOGIN DETAILS

                    $device = $_SERVER['HTTP_USER_AGENT'];
                    $ipAddress = $_SERVER['REMOTE_ADDR'];
                    $nowDate = date('Y-m-d H:i:s');
                    $internetid = $user['internetid'];


                    $stmt = $conn->prepare("INSERT INTO audit_logs (internetid,device,ipAddress,datenow) VALUES(:internetid,:device,:ipAddress,:datenow)");
                    $stmt->execute([
                        'internetid' => $internetid,
                        'device' => $device,
                        'ipAddress' => $ipAddress,
                        'datenow' => $nowDate
                    ]);


                    $details = "Login into dashboard";
                    $internetid = $user['internetid'];
                    $stmt2 = $conn->prepare("INSERT INTO activities (internetid,details) VALUES(:internetid,:details)");
                    $stmt2->execute([
                        'internetid' => $internetid,
                        'details' => $details
                    ]);

                    if ($page['padiwise_sms'] == '1') {
                        $messageText = "New Login Notification";
                        $recipient = $user['acct_phone'];

                        $responseBody = send_bulk_sms(array(
                            'sender_name' => get_setting('display_name'),
                            'recipient' => $recipient,
                            'reference' => date('Y') . uniqid() . rand(1, 9),
                            'message' => $messageText
                        ));
                    }


                    if($page['otp_code'] == "1"){


                        $acct_otp = substr(number_format(time() * rand(), 0, '', ''), 0, 6);

                        $sql =  "UPDATE accounts SET acct_otp=:acct_otp WHERE internetid=:internetid";
                        $stmt = $conn->prepare($sql);
                        $stmt->execute([
                           'acct_otp'=>$acct_otp,
                            'internetid' => $internetid
                        ]);



                             
                           

                        $full_name = $user['firstname'] . " " . $user['lastname'];
                    $APP_NAME = WEB_TITLE;
                    $APP_URL = WEB_URL;
                    $SITE_ADDRESS = $page['website_address'];
                    $APP_NUMBER = WEB_PHONE;
                    $APP_EMAIL = WEB_EMAIL;
                    $user_email = $user['acct_email'];
                    
                    $message = $sendMail->OtpLoginMsg($full_name, $acct_otp, $APP_NAME, $APP_NUMBER, $APP_EMAIL, $APP_URL, $SITE_ADDRESS);
                    // User Email
                    $subject = "OTP CODE" . "-" . $APP_NAME;
                    $email_message->send_mail($user_email, $message, $subject);

                    $_SESSION['login'] = $user['internetid'];
                    header("Location:./otp-verify.php");
                    exit;


                    } else {

                        $full_name = $user['firstname'] . " " . $user['lastname'];
                    $APP_NAME = WEB_TITLE;
                    $APP_URL = WEB_URL;
                    $SITE_ADDRESS = $page['website_address'];
                    $APP_NUMBER = WEB_PHONE;
                    $APP_EMAIL = WEB_EMAIL;
                    $user_email = $user['acct_email'];
                    
                    $message = $sendMail->LoginMsg($full_name, $APP_NAME, $APP_NUMBER, $APP_EMAIL, $APP_URL, $SITE_ADDRESS);
                    // User Email
                    $subject = "Login Notification" . "-" . $APP_NAME;
                    $email_message->send_mail($user_email, $message, $subject);

                    $_SESSION['login'] = $user['internetid'];
                    // header("Location:./pin.php");
                    echo "<script>window.location.href = './pin.php' </script>";
                    // exit;
                     
               
                    }

                    

                    
                }
            }
        }
    }
// }



?>


<!doctype html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
	<meta name="theme-color" content="#00539a">
	<title>
		Login | <?= $page['website_name'] ?>	</title>
	<meta name="description" content="<?= $page['website_name'] ?> ">
	<meta name="keywords" content="<?= $page['website_name'] ?>">
	<link rel="icon" type="image/png" href="upload/968kinsmen_favicon.png" sizes="32x32">
	<link rel="apple-touch-icon" sizes="180x180" href="upload/968kinsmen_favicon.png">
	<link href="online/assets/css/src/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link href="online/assets/css/fontawesome.min.css" rel="stylesheet">
	<style>
    :root {
      --themeColor: #00539a;
      --secondaryColor: #0670be;
    }
  </style>
    <link rel="stylesheet" href="online/assets/css/style.css">
	<link href="online/assets/css/all.min.css" rel="stylesheet">

	<link rel="stylesheet" href="online/assets/css/others.css">
	<script src="online/assets/js/language.js"></script>
	<script type="text/javascript" src="../translate_a/element.js?cb=googleTranslateElementInit2"></script>
	<style>
		html, body {margin: 0; height: 100%; overflow: hidden}
		.authbody {
	
			background: url('online/assets/images/sunset.jpg');
			background-position: center;
			background-size: cover;
			background-repeat: no-repeat;
			margin: 0; 
			height: 100%; 
		}
		
		.cap {
			position:fixed;bottom:10%;left:0;right:0;top:15%;width:480px;margin:0 auto
		}
		
		@media only screen and (max-width: 600px) {
  .cap {
			position:fixed;bottom:10%;left:0;right:0;top:15%;width:100%;margin:0 auto
		}
}
</style>

</head>

<body class="authbody">


	<!-- App Header -->
	<div class="appHeader no-border transparent position-absolute">
		<div class="left">

		</div>
		<div class="pageTitle"></div>
		<div class="right">
			
<style>
.lang {
			width: 120px;
			border-radius: 20px;
		}
		@media only screen and (max-width: 600px) {
			.lang {
				width: 60px;
			border-radius: 20px;
			}

		}
		
</style>
<div class="top-bar-item top-bar-item-full" id="id_100">
						<select onchange="doGTranslate(this);" class="text-primary lang">
							<option value="">EN</option>
							<option value="en|ar">Arabic</option>
							<option value="en|zh-CN">Chinese (Simplified)</option>
							<option value="en|zh-TW">Chinese (Traditional)</option>
							<option value="en|nl">Dutch</option>
							<option value="en|en">English</option>
							<option value="en|fr">French</option>
							<option value="en|de">German</option>
							<option value="en|hi">Hindi</option>
							<option value="en|it">Italian</option>
							<option value="en|ja">Japanese</option>
							<option value="en|pt">Portuguese</option>
							<option value="en|ru">Russian</option>
							<option value="en|es">Spanish</option>
							<option value="en|tr">Turkish</option>
						</select>
						<div id="google_translate_element2"></div>
					</div>		</div>
	</div>
	<!-- * App Header -->

	<!-- App Capsule -->
	<div id="appCapsule" class="cap">
	    <center><strong><a href="index.html" style="color:white">Return to Home</a></strong> </center>
		<div class="section mb-5 p-2">
			<form method="POST" enctype="multipart/form-data">
				<div class="card">
					<div class="card-body pb-1">
						<div class="form-group basic">
							<div class="input-wrapper">
								<label class="label">E-mail Address</label>
								<input type="text" class="form-control" name="login" required="">
							</div>
						</div>
  
						<div class="form-group basic">
							<div class="input-wrapper">
								<label class="label">Password</label>
								<input type="password" class="form-control" name="acct_password" required="">
							</div>
						</div> 
						<div class="form-group basic">
							<div class="input-wrapper">
								<a href="reset-password.php" class="text-primary"><small>Forgot Password?</small></a>
							</div>
						</div>
						<input type="submit" class="btn btn-primary btn-block btn-lg" name="acct_login" value="Login">
						<div class="input-wrapper"><br>
							</div>
					</div>
				</div>

			</form>
		</div>
		
	</div>
	<!-- DialogIconedDanger -->
		<button data-bs-toggle="modal" data-bs-target="#DialogIconedDanger" id="clickButton" style="display: none">click</button>
		<div class="modal fade dialogbox" id="DialogIconedDanger" data-bs-backdrop="static" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-icon text-danger">
						<ion-icon name="close-circle"></ion-icon>
					</div>
					<div class="modal-header">
						<h5 class="modal-title">Error</h5>
					</div>
					<div class="modal-body">
						Invalid Login Details. If you have forgotten your password, please send an e-mail to
						<a href="mailto:support@knobinvest.com" class="text-primary">
							support@knobinvest.com					</a>
					</div>
					<div class="modal-footer">
						<div class="btn-inline">
							<a href="#" class="btn" data-bs-dismiss="modal">CLOSE</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- * DialogIconedDanger -->
		<!-- DialogIconedDanger -->
		<button data-bs-toggle="modal" data-bs-target="#logIconedDanger" id="logButton" style="display: none">click</button>
		<div class="modal fade dialogbox" id="logIconedDanger" data-bs-backdrop="static" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-icon text-danger">
						<ion-icon name="close-circle"></ion-icon>
					</div>
					<div class="modal-body">
											</div>
					<div class="modal-footer">
						<div class="btn-inline">
							<a href="#" class="btn" data-bs-dismiss="modal">CLOSE</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- * DialogIconedDanger -->
	<!-- * App Capsule -->
	<!-- Bootstrap -->
	<script src="online/assets/js/lib/bootstrap.bundle.min.js"></script>
	<!-- Splide -->
	<script src="online/assets/js/plugins/splide/splide.min.js"></script>
	<!-- Base Js File -->
	<script src="online/assets/js/fontawesome.min.js"></script>
	<script src="online/assets/js/all.min.js"></script>
	<script src="online/assets/js/jquery.min.js"></script>
	</body>
</html>