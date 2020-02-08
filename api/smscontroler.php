<?php

class SMSController {
	public function __construct(){
		require_once ($_SERVER["DOCUMENT_ROOT"]."/cms/api/Africas.php");
	}

	public function triggerMessage($phoneNumber, $message){
		// Set your app credentials
		$username   = "Young";
		$apiKey     = "41a8d98f3486c671810a44cc51facd659a5cb1723de6d68dce4bdf3e2598000d";
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
