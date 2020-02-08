<?php
ini_set('display_errors', 1);
require_once ($_SERVER["DOCUMENT_ROOT"]."/cms/api/smscontroler.php");

$sms = new SMSController();
$phoneNumber = "+254701241057";
$message = "Test message";

$sms->triggerMessage($phoneNumber, $message);
