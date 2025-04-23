<?php
require_once($_SERVER['DOCUMENT_ROOT'] . "/configuration/config.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/admin/include/adminFunction.php");
require_once($_SERVER['DOCUMENT_ROOT'] . "/admin/include/adminClass.php");

$conn = dbConnect();


$sql = "SELECT * FROM transactions";
$stmt = $conn->prepare($sql);
$stmt->execute([]);
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






