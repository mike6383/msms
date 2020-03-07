<?php
require 'vendor/autoload.php';
use AfricasTalking\SDK\AfricasTalking;

function sendMessage($phoneNumber, $message){

  // Set your app credentials
  $username   = "Young";
  $apiKey     = "f0ee52a7ebc3245656ef971e516b77b0b4a239fc39d073afa4de8442daa6975c";

  // Initialize the SDK
  $AT         = new AfricasTalking($username, $apiKey);

  // Get the SMS service
  $sms        = $AT->sms();

  // Set the numbers you want to send to in international format
  //$recipients = "0701241057";

  // Set your message
  //$message    = "I'm a lumberjack and its ok, I sleep all night and I work all day";

  // Set your shortCode or senderId
  //$from       = "myShortCode or mySenderId";

  try {
      // Thats it, hit send and we'll take care of the rest
      $result = $sms->send([
          'to'      => $phoneNumber,
          'message' => $message,
      ]);

      print_r($result);
  } catch (Exception $e) {
      echo "Error: ".$e->getMessage();
  }


}
