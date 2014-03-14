<?
function loginxanga($username,$password){

global $postdata;
global $cookies;

//Find Dynamic Value VIEWSTATE
$handle = fopen("http://www.xanga.com/signin.aspx", "rb");
$contents = '';
while (!feof($handle)) {
  $contents .= fread($handle, 8192);
}
fclose($handle);

preg_match('%<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="(.*?)" />%' ,$contents ,$arr);

$postdata = Array
(
"__EVENTTARGET" => '',
"__EVENTARGUMENT" => '',
"__VIEWSTATE" => $arr[1],
"txtSigninUsername" => $username,
"txtSigninPassword" => $password,
"chkSigninRememberPassword" => 'on',
"signInButton" => 'Sign In',
"registrationModule$txtUsername" => '',
"registrationModule$txtUsername" => '',
"registrationModule$txtPassword1" => '',
"registrationModule$txtPassword2" => '',
"registrationModule$txtEmail" => '',
"registrationModule$txtLetters" => '',
"registrationModule$DOB_month" => 'A',
"registrationModule$DOB_day" => 'A',
"registrationModule$DOB_year" => 'A',
);

$cookies = Array(
"t"=>'1'
);


sockshttpconnect('http://www.xanga.com/Signin.aspx','POST');
global $r_header;

$loggedinheader=processheader($r_header);

setcookie("u", trim($loggedinheader['u']), time()+3600);
setcookie("x", trim($loggedinheader['x']), time()+3600);
setcookie("y", trim($loggedinheader['y']), time()+3600);
if($loggedinheader['u'] && $loggedinheader['x'] && $loggedinheader['y']){
	setcookie("xusername", $username, time()+3600);
}
}

//Functions
//processheader
//Process HTTP header to get Cookie
function processheader($head){
	$tmpheader=explode("\n",$head);
	foreach($tmpheader as $line){
		if(strpos($line,'Cookie: u=')){
			$header['u']=strdata($line,'Set-Cookie: u=','; domain=.xanga.com;')."\n";
		}
		if(strpos($line,'Cookie: x=')){
			$header['x']=strdata($line,'Set-Cookie: x=','; domain=.xanga.com;')."\n";
		}
		if(strpos($line,'Cookie: y=')){
			$header['y']=strdata($line,'Set-Cookie: y=','; domain=.xanga.com;')."\n";
		}
	}
	return($header);
}

?>