<?php
$apiKey = 'YOUR_API_KEY'; // Your MailChimp API Key
$listId = 'YOUR_LIST_ID'; // Your MailChimp List ID
$double_optin=true;
$send_welcome=true;
$email_type = 'html';
$email = $_POST['email'];
//replace us14 with your actual datacenter
$submit_url = "http://us14.api.mailchimp.com/1.3/?method=listSubscribe";
$data = array(
    'email_address'=>$email,
    'apikey'=>$apiKey,
    'id' => $listId,
    'double_optin' => $double_optin,
    'send_welcome' => $send_welcome,
    'email_type' => $email_type
);
$payload = json_encode($data);
 
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $submit_url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, urlencode($payload));
 
$result = curl_exec($ch);
curl_close ($ch);
$data = json_decode($result);
if ($data->error){
    echo $data->error;
} else {
    echo "You have been <strong>successfully</strong> subscribed to our Email List.";
}
?>