<?php 
function curlGetHtml($url){
	$date = new DateTime();
	$str = (String)$date->getTimestamp();
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $url);
	$fp = fopen("htmlDownload/" . $str . ".html", "w");
	curl_setopt($ch, CURLOPT_FILE, $fp);
	curl_exec ($ch);
	curl_close ($ch);
	fclose($fp);
}

curlGetHtml("www.cngba.com");
?>