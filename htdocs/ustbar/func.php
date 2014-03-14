<?php 

$url_noHttp;
function execInBackground($cmd) { 
    if (substr(php_uname(), 0, 7) == "Windows"){ 
        pclose(popen("start /B ". $cmd, "r"));  
    } 
    else { 
        exec($cmd . " > /dev/null &");   
    } 
}

function getFavIcon($url){
	echo '<img src="https://plus.google.com/_/favicon?domain=' . $url . '">';
}


function clearSymbols($u){
	$Symbols = array("/",'\\',"*","?",":","|","<",">");
	return substr(str_replace($Symbols, "^", $u),0,50);
}

function checkIfTheSiteIsUp($url){
    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_NOBODY, true);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_exec($ch);
    $retcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
    curl_close($ch);
    if (200==$retcode) {
        return true;
    } else {
        return false;
    }
}

function getWebSnapshot($url){
	$checkHttpPrefixed = substr($url,0,7)=="http://";
	// echo "The $checkHttpPrefixed is" . $checkHttpPrefixed . "</br>";
	// echo "The substr($url,0,7) is " . substr($url,0,7) . "</br>";
	$url_noHttp="";
	if($checkHttpPrefixed){
		$url_noHttp = clearSymbols(substr($url,7));
		// echo "url_noHttp is " . $url_noHttp;
	}else{
		$url_noHttp = clearSymbols($url);
		// echo "url_noHttp is " . $url_noHttp;
	}
	$fe = file_exists("E:/www/img/" . $url_noHttp . ".jpg");
	if(!$fe){
		$s = 'C:\wkhtmltopdf\wkhtmltoimage.exe "' . $url . '" "E:\www\img/' . $url_noHttp . '.jpg"';
		// echo $s;
		execInBackground($s);

	}else{
		echo '<img src="img/' . $url_noHttp . '.jpg" style="width:100px;height:100px;border-radius:50%">';
	}

	}

	// function debugGetWebSnapshot($url){
	// $checkHttpPrefixed = substr($url,0,7)=="http://";
	// // echo "The $checkHttpPrefixed is" . $checkHttpPrefixed . "</br>";
	// // echo "The substr($url,0,7) is " . substr($url,0,7) . "</br>";
	// $url_noHttp="";
	// if($checkHttpPrefixed){
	// 	$url_noHttp = substr(str_replace(,"^",substr($url,7)),0,100);
	// 	// echo "url_noHttp is " . $url_noHttp;
	// }else{
	// 	$url_noHttp = substr(str_replace("?","^",$url),0,100);
	// 	// echo "url_noHttp is " . $url_noHttp;
	// }
	// $fe = file_exists("E:/www/img/" . $url_noHttp . ".jpg");
	// if(!$fe){
	// 	$s = 'C:\wkhtmltopdf\wkhtmltoimage.exe "' . $url . '" "E:\www\img/' . $url_noHttp . '.jpg"';
	// 	echo $s;
	// 	execInBackground($s);
	// 	sleep(1);

	// }
	// 	echo '<img src="img/' . $url_noHttp . '.jpg" style="width:100px;height:100px;border-radius:50%">';
	

	// }
	

// function fuckyou(){
	
// 	if(false){
// 		$url_noHttp = "fuck you!";
// 	}else{
// 		$url_noHttp = "nothing else";
// 	}
// 	echo $url_noHttp;
// }

// function damnyou(){
// 	if(1==1){
// 		echo "fuck you";
// 	}else{
// 		echo "damn you";
// 	}
// }


 ?>