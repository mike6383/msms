<?php

class SMSController {
	public function __construct(){
		require_once ($_SERVER["DOCUMENT_ROOT"]."/api/Africas.php");
	}

	public function triggerMessage($phoneNumber, $message){
		// Set your app credentials
		$username   = "sandbox";
		$apiKey     = "54509f0e034a012c44edf7f61123fa652260496f8be2439c6fb55d75af99fe96";
		$sms         = new AfricasTalkingGateway($username, $apiKey);
		// Set the numbers you want to send to in international format

		try {
		    // Thats it, hit send and we'll take care of the rest
		    $result = $sms->sendMessage($phoneNumber, $message);

		} catch (Exception $e) {
		    echo "Error: ".$e->getMessage();
		}
	}
}
