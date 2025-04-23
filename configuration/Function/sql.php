<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/configuration/config.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/configuration/Function/userClass.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/configuration/Function/Function.php");
// require_once $_SERVER['DOCUMENT_ROOT'] . "/configuration/SMS/twilioController.php";

$conn = dbConnect();
$message = new message();

$sql = "SELECT * FROM settings WHERE id ='1'";
$stmt = $conn->prepare($sql);
$stmt->execute();

$page = $stmt->fetch(PDO::FETCH_ASSOC);

$title = $page['website_name'];


$website_email = $page['website_email'];

$viesConn = "SELECT * FROM accounts WHERE internetid=:internetid";
$stmt = $conn->prepare($viesConn);

$stmt->execute([
    ':internetid' => $_SESSION['internetid']
]);
$row = $stmt->fetch(PDO::FETCH_ASSOC);

$internetid = $row['internetid'];

$full_name = $row['firstname'] . " " . $row['lastname'];

$acct_stat = $row['acct_status'];

// show balance 6,78.76
$TotalBalance = $row['savings_balance'] + $row['current_balance'];
$LoanBalance = $row['loan_balance'];
$CurrentBalance = $row['current_balance'];
$SavingsBalance = $row['savings_balance'];

$fullName = $row['firstname'] . " " . $row['lastname'];
$email = $row['acct_email'];

// $currency = $page['currency'];
$currency = $row['acct_currency'];

// // audit_logs
$sql = "SELECT * FROM audit_logs ORDER BY datenow DESC";
$stmt = $conn->prepare($sql);
$stmt->execute();

$logs = $stmt->fetch(PDO::FETCH_ASSOC);

$device = $logs['device'];
$ipAddress = $logs['ipAddress'];
$datenow = $logs['datenow'];


$sql3 = "SELECT * FROM list_payment WHERE internetid=:internetid";
$stmt44 = $conn->prepare($sql3);
$stmt44->execute([
    ':internetid' => $_SESSION['internetid']
]);

$list_payment = $stmt44->fetch(PDO::FETCH_ASSOC);

//TEMP TRANSACTION FETCH
$sql = "SELECT * FROM transactions WHERE internetid =:internetid ORDER BY trans_id DESC LIMIT 1";
$stmt = $conn->prepare($sql);
$stmt->execute([
    'internetid' => $_SESSION['internetid']
]);
$transac = $stmt->fetch(PDO::FETCH_ASSOC);

function TransType($transac)
{
    if ($transac['payment_account'] == 'current_account') {
        return 'Current Account';
    }

    if ($transac['payment_account'] == 'savings_account') {
        return 'Savings Account';
    }
}


$TransType = TransType($transac);



function TransStatus($transac)
{
    if ($transac['trans_status'] == 'completed') {
        return '<span class="badge badge-primary inv-status">Completed</span>';
    }

    if ($transac['trans_status'] == 'pending') {
        return '<span class="badge badge-info inv-status">Pending</span>';
    }
    if ($transac['trans_status'] == 'processing') {
        return '<span class="badge badge-warning inv-status">Processing</span>';
    }
    if ($transac['trans_status'] == 'failed') {
        return '<span class="badge badge-danger inv-status">Failed</span>';
    }
}


$TransStatus = TransStatus($transac);


//TEMP TRANSACTION FETCH
$sql = "SELECT * FROM ticket WHERE internetid =:internetid";
$stmt = $conn->prepare($sql);
$stmt->execute([
    'internetid' => $_SESSION['internetid']
]);
$result44 = $stmt->fetch(PDO::FETCH_ASSOC);


function TickeStatus($result44)
{
    if ($result44['ticket_status'] == 'open') {
        return '<span class="shadow-none badge outline-badge-info">Completed</span>';
    }

    if ($result44['ticket_status'] == 'closed') {
        return '<span class="shadow-none badge outline-badge-danger">Closed</span>';
    }
    if ($result44['ticket_status'] == 'processing') {
        return '<span class="shadow-none badge outline-badge-secondary">Processing</span>';
    }
    if ($result44['ticket_status'] == 'approved') {
        return '<span class="shadow-none badge outline-badge-success">Approved</span>';
    }
    
}


$TickeStatus = TickeStatus($result44);


$sql2 = "SELECT * FROM card WHERE internetid=:internetid";
$cardstmt = $conn->prepare($sql2);
$cardstmt->execute([
    'internetid' => $_SESSION['internetid']
]);

$cardCheck = $cardstmt->fetch(PDO::FETCH_ASSOC);



// //TEMP TRANSACTION FETCH
$sql = "SELECT * FROM temp_dumps WHERE internetid =:internetid ORDER BY trans_id DESC LIMIT 1";
$stmt = $conn->prepare($sql);
$stmt->execute([
    'internetid' => $_SESSION['internetid']
]);
$temp_trans = $stmt->fetch(PDO::FETCH_ASSOC);

$TempBalance = $temp_trans['amount'];

//USER STATUS
function userStatus($row)
{
    if ($row['acct_status'] === 'active') {
        return 'ACTIVE';
    }

    if ($row['acct_status'] === 'hold') {
        return 'ON HOLD';
    }
}


$userStatus = userStatus($row);
