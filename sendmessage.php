<?php
require 'vendor/autoload.php';
use AfricasTalking\SDK\AfricasTalking;

function sendMessage($phoneNumber, $message){

  // Set your app credentials
  $username   = "sandbox";
  $apiKey     = "c3191471ba26c996f7c2087b23c7b9a8fe0d466f780be00d335aa1477dc9561d";

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
