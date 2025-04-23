<?php
// Handle form submission
if (isset($_POST['submit'])) {
    // Fetch form data
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $subject = htmlspecialchars($_POST['subject']);
    $message = htmlspecialchars($_POST['message']);

    // Validate email
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $form_status = "error";
    } else {
        // Set email details
        $to = "your-email@example.com";  // Replace with your email address
        $headers = "From: $email\r\n";
        $email_subject = "Contact Form Submission: $subject";
        $email_body = "You have received a new message from $name.\n\n".
                      "Here are the details:\n".
                      "Name: $name\n".
                      "Email: $email\n\n".
                      "Message:\n$message";

        // Send email
        if (mail($to, $email_subject, $email_body, $headers)) {
            $form_status = "success";
        } else {
            $form_status = "error";
        }
    }
}
?>


<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<head>
  <title>
    Contact | KNOB  </title>
  <meta name="robots" content="index,follow">
  <meta name="robots" content="noindex,follow">
  <meta name="robots" content="index,nofollow">
  <meta name="robots" content="noindex,nofollow">
  <meta name="googlebot" content="noindex,nofollow,noarchive,nosnippet,noodp">
  <meta name="robots" content="noindex,nofollow,noarchive,nosnippet,noodp">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="KNOB">
  <meta name="keywords" content="KNOB, Internet, Private">
  <meta property="og:description" content="KNOB">
  <link rel="canonical" href="index.html">
  <meta property="og:url" content="#">
  <meta property="og:site_name" content="KNOB">
  <meta name="theme-color" content="#00539a">
  <link rel="icon" type="image/png" href="online/upload/968kinsmen_favicon.png" sizes="32x32">
  <link rel="apple-touch-icon" sizes="180x180" href="online/upload/968kinsmen_favicon.png">
  <link rel="stylesheet" type="text/css" href="css.css?family=Lato:300,300i,400,400i,700,900">

<script type="text/javascript">
    // Disable right-click
    document.addEventListener("contextmenu", function(event) {
        event.preventDefault();
    });

    // Disable specific keyboard shortcuts
    document.addEventListener("keydown", function(event) {
      // F12
      if (event.key === "F12") {
        event.preventDefault();
      }
      // Ctrl+Shift+I (Windows/Linux) or Command+Option+I (Mac)
      if ((event.ctrlKey && event.shiftKey && event.key === "I") || 
          (event.metaKey && event.altKey && event.key === "I")) {
        event.preventDefault();
      }
      // Ctrl+Shift+C or Command+Option+C (to prevent element inspection)
      if ((event.ctrlKey && event.shiftKey && event.key === "C") || 
          (event.metaKey && event.altKey && event.key === "C")) {
        event.preventDefault();
      }
      // Ctrl+Shift+J or Command+Option+J (for console)
      if ((event.ctrlKey && event.shiftKey && event.key === "J") || 
          (event.metaKey && event.altKey && event.key === "J")) {
        event.preventDefault();
      }
      // Ctrl+U or Command+U (to prevent viewing source)
      if ((event.ctrlKey && event.key === "U") || (event.metaKey && event.key === "U")) {
        event.preventDefault();
      }
    });
  </script>


  <script type="text/javascript">
    // Disable copy, cut, and text selection
    document.addEventListener("copy", function(event) {
        event.preventDefault();
    });
    
    document.addEventListener("cut", function(event) {
        event.preventDefault();
    });
    
    document.addEventListener("selectstart", function(event) {
        event.preventDefault();
    });
  </script>



  <style>
    :root {
      --themeColor: #00539a;
      --secondaryColor: #0670be;
    }
  </style>
  	<link rel="stylesheet" href="online/assets/vendor/flatpickr/flatpickr.min.css">
  <link rel="stylesheet" href="assets/css/bootstrap.css">
  <link rel="stylesheet" href="assets/css/fonts.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="online/assets/css/others.css">
  <link href="online/assets/css/fontawesome.min.css" rel="stylesheet">
	<link href="online/assets/css/all.min.css" rel="stylesheet">
  <script src="online/assets/js/language.js"></script>
  <script type="text/javascript" src="translate_a/element.js?cb=googleTranslateElementInit2"></script>
  <script src="online/assets/javascript/countries.js"></script>
  <style>
.ie-panel {
    display: none;
    background: #212121;
    padding: 10px 0;
    box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);
    clear: both;
    text-align: center;
    position: relative;
    z-index: 1;
}
html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {
    display: block;
}
</style>
<style>
input[type=text], select, input[type=email] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
input[type=submit]:hover {
    background-color: #45a049;
}
.div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
</head>

<body>
  <div class="preloader">
    <!-- <div class="preloader-body">
      <p><img src="online/upload/968kinsmen_favicon.png" width="100px">
      </p>
    </div> -->
  </div>
  <div class="page">
    <header class="section page-header rd-navbar-transparent-wrap">
      <!--RD Navbar-->
      <div class="rd-navbar-wrap">
        <nav class="rd-navbar rd-navbar-transparent" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-static" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-lg-stick-up-offset="20px" data-xl-stick-up-offset="20px" data-xxl-stick-up-offset="20px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
          <div class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle=".rd-navbar-collapse"><span></span>
          </div>
          <div class="rd-navbar-aside-outer rd-navbar-collapse">
            <div class="rd-navbar-aside">
              <div class="rd-navbar-info">
                
<style>
.lang {
			width: 150px;
			border-radius: 20px;
      height: 43px
		}
		@media only screen and (max-width: 600px) {
			.lang {
				width: 100%px;
			border-radius: 20px;
      height: 43px
			}

		}
		
</style>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
            max-width: 1200px;
            margin: auto;
        }
        .contact-info, .contact-form {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 20px;
            width: 100%;
            max-width: 500px;
            flex: 1;
        }
        .contact-info {
            margin-right: 10px;
        }
        .contact-form {
            margin-left: 10px;
        }
        h1 {
            margin-bottom: 20px;
            font-size: 24px;
        }
        p {
            font-size: 16px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        textarea {
            resize: none;
        }
        button {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
        .success {
            color: green;
        }
        .error {
            color: red;
        }
        .form-status {
            margin-top: 10px;
        }
    </style>


<div class="top-bar-item top-bar-item-full" id="id_100">
						<select onchange="doGTranslate(this);" class="text-primary lang">
							<option value="">LANGUAGE</option>
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
					</div>              </div>
              <ul class="list-lined">
                <li><a href="#">Branches</a>
                </li>
                <li><a href="contact.php">Contact Us</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="rd-navbar-main-outer">
            <div class="rd-navbar-main-inner">
              <div class="rd-navbar-main">
                <!--RD Navbar Panel-->
                <div class="rd-navbar-panel">
                  <!--RD Navbar Toggle-->
                  <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                  <!--RD Navbar Brand-->
                  <div class="rd-navbar-brand">
                    <!--Brand--><a class="brand" href="index.html">
                    <img class="brand-logo-dark" src="assets/images/logo/logo.png" alt="KNOB" width="100px" height="40px">
                    <img class="brand-logo-light" src="assets/images/logo/logo.png" alt="KNOB" width="100px" height="40px"></a>
                  
                  </div>
                </div>
              
                <div class="rd-navbar-main-element">
                  <div class="rd-navbar-nav-wrap">
                    <ul class="rd-navbar-nav">
                      <li class="rd-nav-item">
                        <a class="rd-nav-link" href="personal.html">
                          Personal</a>
                      </li>
                      <li class="rd-nav-item">
                        <a class="rd-nav-link" href="business.html">
                           Business</a>
                      </li>
                      <li class="rd-nav-item">
                        <a class="rd-nav-link" href="wealth.html">
                          Wealth Management</a>
                      </li>
                      <li class="rd-nav-item">
                        <a class="rd-nav-link" href="about.html">
                          About KNOB</a>
                      </li>
                    
                      <li class="rd-nav-item"><a class="rd-nav-link button button-primary text-white" href="login.php">CUSTOMER LOGIN</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </nav>
      </div>
             <div class="rd-navbar-bg novi-background bg-image" style="background-image: url(assets/img/cen2.jpg)"></div>
        <div class="rd-navbar-bg novi-background bg-image" style="height: 100px; background-image: url(assets/img/cen2.jpg)"></div>
          </header><!-- Breadcrumbs-->
<section class="breadcrumbs-custom bg-image novi-background bg-primary">
  <div class="container">
    <ul class="breadcrumbs-custom-path">
      <li><a href="index.html">Home</a>
      </li>
      <li class="active">Contact Us</li>
    </ul>
  </div>
</section>

<body>

    <div class="container">
        <!-- Left Section: Contact Information -->
        <div class="contact-info">
            <h1>Head Branch</h1>
            <p><strong>Address:</strong>88 Market St, Staten Island, NY 10310, USA</p>
            <p><strong>Email:</strong> support@knobinvest.com</p>
            <p><strong>Phone:</strong> +1(704)412-9162</p>
            <p><strong>Business Hours:</strong> Monday to Friday: 9:00 AM - 5:00 PM</p>
        <br>
            <h6>Chicago, USA</h6>
            <p><strong>Address:</strong> Franklin Center, 227 West Monroe Street, Chicago, IL 60606</p>
            <p><strong>Business Hours:</strong> Monday to Friday, 8:00 AM - 5:00 PM</p>
        <br>
            <h6>Miami, USA</h6>
            <p><strong>Address:</strong> 701 Brickell Avenue, Miami, FL 33131</p>
            <p><strong>Business Hours:</strong> Monday to Friday: 9:00 AM - 5:00 PM</p>
        <br>
            <h6>Houston, USA</h6>
            <p><strong>Address:</strong> 609 Main at Texas, 609 Main Street, Houston, TX 77002</p>
            <p><strong>Business Hours:</strong> Monday to Friday: 9:00 AM - 5:30 PM</p>
        <br>
            <h6>Nairobi, Kenya</h6>
            <p><strong>Address:</strong> Prism Tower, 9th Floor, Upper Hill, Nairobi</p>
            <p><strong>Phone:</strong> +254768313489</p>
            <p><strong>Business Hours:</strong> Monday to Friday: 9:00 AM - 5:00 PM</p>
        <br>
            <h6>Mombasa, Kenya</h6>
            <p><strong>Address:</strong> City Mall Business Wing, 3rd Floor Nyali, Mombasa</p>
            <p><strong>Business Hours:</strong> Monday to Friday: 9:00 AM - 6:00 PM</p>
        <br>
            <h6>Kisumi, Kenya</h6>
            <p><strong>Address:</strong> Victoria Plaza, 2nd Floor, Milimani, Kisumu</p>
            <p><strong>Business Hours:</strong> Monday to Friday: 8:30 AM - 5:00 PM</p>
        <br>

        </div>



        <!-- Right Section: Contact Form -->
        <div class="contact-form">
            <h1>Get in Touch</h1>
            <p>If you have any questions or would like to reach out to us, please fill out the form below and we’ll get back to you as soon as possible.</p>

            <form action="contact.php" method="post">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" required>
                </div>

                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" required>
                </div>

                <div class="form-group">
                    <label for="subject">Subject</label>
                    <input type="text" id="subject" name="subject" required>
                </div>

                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" name="message" rows="5" required></textarea>
                </div>

                <div class="form-group">
                    <button type="submit" name="submit">Send Message</button>
                </div>

                <!-- Display Success/Error Messages -->
                <div class="form-status">
                    <?php 
                    if (isset($form_status)) {
                        if ($form_status == 'success') {
                            echo "<p class='success'>Thank you! Your message has been sent.</p>";
                        } else {
                            echo "<p class='error'>Oops! Something went wrong. Please try again.</p>";
                        }
                    }
                    ?>
                </div>
            </form>
        </div>
    </div>

</body>



<footer class="section footer-classic">
  <div class="footer-inner-1">
    <div class="container">
      <div class="row row-40">
        <div class="col-md-6 col-lg-4 col-sm-12 col-xs-12">
          <h5>Contact Us</h5>
          <ul class="contact-list font-weight-bold">
            <li>
              <div class="unit unit-spacing-xs">
                <div class="unit-left">
                  <div class="icon icon-sm icon-primary novi-icon mdi mdi-map-marker"></div>
                </div>
                <div class="unit-body">
                  <a href="#">
                    88 Market St, Staten Island, NY 10310, USA                 </a>
                </div>
              </div>
            </li>
            <li>
              <div class="unit unit-spacing-xs">
                <div class="unit-left">
                  <div class="icon icon-sm icon-primary novi-icon mdi mdi-email"></div>
                </div>
                <div class="unit-body">
                  <a href="mailto:support@knobinvest.com">
                    support@knobinvest.com                  </a>
                </div>
              </div>
            </li>
            <li>
              <div class="unit unit-spacing-xs">
                <div class="unit-left">
                  <div class="icon icon-sm icon-primary novi-icon mdi mdi-clock"></div>
                </div>
                <div class="unit-body">
                  <ul class="list-0">
                    <li>Weekdays: 9:00–17:00</li>
                    <li>Weekends: Closed</li>
                  </ul>
                </div>
              </div>
            </li>
          </ul>
        </div>
        <div class="col-md-6 col-lg-4 col-sm-6 col-xs-6">
          <h5>Quick Links</h5>
          <ul class="footer-list big">
            <li><a href="login.php">Account Management</a>
            </li>
            <li><a href="privacy-policy.html">Privacy Policy</a>
            </li>
            <li><a href="terms.html">Terms of Service</a>
            </li>
          </ul>
        </div>
        <div class="col-md-6 col-lg-4 col-sm-6 col-xs-6">
          <h5>Online Services</h5>
          <ul class="footer-list big">
            <li>
              <a href="login.php">
                Customer Access</a>
            </li>
            <li>
              <a href="login.php">
                Personal</a>
            </li>
            <li>
              <a href="login.php">
                Business</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="footer-inner-2">
    <div class="container">
      <p class="rights"><span>&copy;&nbsp;</span><span class="copyright-year"></span>. All Rights Reserved.
        <a href="index.html">
          KNOB Investment Group.
        </a>
        
      </p>
    </div>
  </div>
</footer>
</div>
<script language="javascript">
	populateCountries( "country", "state" );
	populateCountries( "country2" );
	populateCountries( "country2" );
</script>
<script src="assets/js/core.min.js"></script>
<script src="assets/js/script.js"></script>
<script src="online/assets/js/fontawesome.min.js"></script>
<script src="online/assets/js/all.min.js"></script>
<script src="online/assets/vendor/flatpickr/flatpickr.min.js"></script>
<!--coded by Starlight-->
<script src="//code.tidio.co/ynas9z11augeklnxxphbzhvsmheorfl3.js" async=""></script>
</body>
</html>



