<?php

@define('DBSERVER', 'localhost');
@define('DBUSERNAME', 'beacgndl_user');
@define('DBPASSWORD', 'beacgndl_db');
@define('DBNAME', 'beacgndl_db');

 
/* Attempt to connect to MySQL database */
$link = mysqli_connect(DBSERVER, DBUSERNAME, DBPASSWORD, DBNAME);
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}


date_default_timezone_set("Africa/Lagos");



//EMAIL CONFIGURATION

$host = "beacontraders.net";

$mail_username = "support@beacontraders.net";

$mail_password = "@@mailpass##";

 

?>

