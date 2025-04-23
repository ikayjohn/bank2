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
$UniqueName  = "OTP Code";


if (@!$_SESSION['login']) {
  header("location:./login.php");
}
if (@$_SESSION['internetid']) {
  header("Location:./accounts/dashboard.php");
}
$viesConn = "SELECT * FROM accounts WHERE internetid = :internetid";
$stmt = $conn->prepare($viesConn);

$stmt->execute([
  ':internetid' => $_SESSION['login']
]);
$row = $stmt->fetch(PDO::FETCH_ASSOC);

$fullName = $row['firstname'] . " " . $row['lastname'];
$internetid = $row['internetid'];


if (isset($_POST['pincodesubmit'])) {
  $pincodeVerified = $_POST['input'];
  $old_otp = $row['acct_otp'];

  
  if ($pincodeVerified !== $old_otp) {
    toast_alert('error', 'Invalid Code');
    // notify_alert('Invalid Account Pincode','danger','2000','Close');
  }
  if (empty($pincodeVerified)) {
    toast_alert('error', 'Enter Your Pincode');
    // notify_alert('Please Enter Your Pincode','danger','2000','Close');

  }
  if ($pincodeVerified === $old_otp) {
    //session_start();
 
    if ($row['phoneverify'] == '0') {
                     
      
         $code = $row['acct_otp'];
      
         $messageText = "Kindly use ".$code." as OTP";
         $recipient = $row['acct_phone'];
         $sendEerID = "Auth";

         $responseBody = send_bulk_sms(array(
             'sender_name' => $sendEerID,
             'recipient' => $recipient,
             'reference' => date('Y') . uniqid() . rand(1, 9),
             'message' => $messageText
         ));
     }

 
      

    $_SESSION['internetid'] = $internetid;
    $_COOKIE['firstVisit'] = $internetid;
    header("Location:./accounts/dashboard.php");
  }
}
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
		OTP Verification | <?= $page['website_name'] ?>	</title>
	<meta name="description" content="<?= $page['website_name'] ?> was launched to make online banking easy and fast.">
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
							<option value="en|af">Afrikaans</option>
							<option value="en|sq">Albanian</option>
							<option value="en|ar">Arabic</option>
							<option value="en|hy">Armenian</option>
							<option value="en|az">Azerbaijani</option>
							<option value="en|eu">Basque</option>
							<option value="en|be">Belarusian</option>
							<option value="en|bg">Bulgarian</option>
							<option value="en|ca">Catalan</option>
							<option value="en|zh-CN">Chinese (Simplified)</option>
							<option value="en|zh-TW">Chinese (Traditional)</option>
							<option value="en|hr">Croatian</option>
							<option value="en|cs">Czech</option>
							<option value="en|da">Danish</option>
							<option value="en|nl">Dutch</option>
							<option value="en|en">English</option>
							<option value="en|et">Estonian</option>
							<option value="en|tl">Filipino</option>
							<option value="en|fi">Finnish</option>
							<option value="en|fr">French</option>
							<option value="en|gl">Galician</option>
							<option value="en|ka">Georgian</option>
							<option value="en|de">German</option>
							<option value="en|el">Greek</option>
							<option value="en|ht">Haitian Creole</option>
							<option value="en|iw">Hebrew</option>
							<option value="en|hi">Hindi</option>
							<option value="en|hu">Hungarian</option>
							<option value="en|is">Icelandic</option>
							<option value="en|id">Indonesian</option>
							<option value="en|ga">Irish</option>
							<option value="en|it">Italian</option>
							<option value="en|ja">Japanese</option>
							<option value="en|ko">Korean</option>
							<option value="en|lv">Latvian</option>
							<option value="en|lt">Lithuanian</option>
							<option value="en|mk">Macedonian</option>
							<option value="en|ms">Malay</option>
							<option value="en|mt">Maltese</option>
							<option value="en|no">Norwegian</option>
							<option value="en|fa">Persian</option>
							<option value="en|pl">Polish</option>
							<option value="en|pt">Portuguese</option>
							<option value="en|ro">Romanian</option>
							<option value="en|ru">Russian</option>
							<option value="en|sr">Serbian</option>
							<option value="en|sk">Slovak</option>
							<option value="en|sl">Slovenian</option>
							<option value="en|es">Spanish</option>
							<option value="en|sw">Swahili</option>
							<option value="en|sv">Swedish</option>
							<option value="en|th">Thai</option>
							<option value="en|tr">Turkish</option>
							<option value="en|uk">Ukrainian</option>
							<option value="en|ur">Urdu</option>
							<option value="en|vi">Vietnamese</option>
							<option value="en|cy">Welsh</option>
							<option value="en|yi">Yiddish</option>
						</select>
						<div id="google_translate_element2"></div>
					</div>		</div>
	</div>
	<!-- * App Header -->

	<!-- App Capsule -->
	<div id="appCapsule" class="cap">
		<div class="section mb-5 p-2">
			<form method="POST" enctype="multipart/form-data">
				<div class="card">
				    
					<div class="card-body pb-1">
						<div class="form-group basic">
							<div class="input-wrapper">
								<label class="label">OTP CODE</label>
								<input class="form-control" name="input" type="password" class="form-control" placeholder="******" required maxlength="6">
							</div>
						</div>
						<div class="form-group basic">
							<div class="input-wrapper">
								<a href="./signout" class="text-primary">Sign out?</a>
							</div>
						</div>
						<input type="submit" class="btn btn-primary btn-block btn-lg" name="pincodesubmit" value="Unlock">
					</div>
				</div>

			</form>
		</div>
		
	</div>
	<!-- DialogIconedDanger -->

		
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