<?php
//Ultimate Socks Function V1.0 [Written by alpha] (15/10/2006)
//Usage: sockshttpconnect(URL[,METHOD][,Referer][,UserAgent])
//Global Variables
//$cookies(array) Or $cookies="a=1; b=2; c=3;
//$postdata(array) Or $postdata="a=1&b=2&c=3"
//
//Example:
//$cookies=array(ASPSESSIONIDCASTCABQ=>LDNDDOLAKHDGCJAJEANMPFFE);
//$postdata=array(a=>b,c=>d);
//sockshttpconnect('http://forum2.hkgolden.com/default.asp','POST',"http://www.fevawork.com/","Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1) Gecko/20061003 Firefox/2.0");
//
//Returns:
//(Sent HTTP Header) $s_request (Using Global Variable)
//(Received HTTP Header) $r_header (Using Global Variable)
//(Content) $r_content (Using Global Variable)

function sockshttpconnect($url,$method='GET',$referer='',$useragent=''){
	global $cookies;
	global $postdata;
	global $r_header;
	global $r_content;
	global $s_request;
	
	$port = 80; //Set Default Port to 80
	$method = strtoupper($method); //method must be capital
	
	// Break up the URL to get the servername and the path.
	list($server,$script) = preg_split("/http:\/\/([^\/]+)([^ ]*)/",$url,-1,PREG_SPLIT_DELIM_CAPTURE | PREG_SPLIT_NO_EMPTY);
	//If port != 80 , Find the correct port
	if (strpos($server,":") != false) {
		list($server,$port) = preg_split("/([^:]+):(.+)/",$server,-1,PREG_SPLIT_DELIM_CAPTURE | PREG_SPLIT_NO_EMPTY);
	} 
	
	// Make the HTTP cookie header line
	if(is_array($cookies)){
		$cookiestring = "";
		if (sizeof($cookies) > 0) {
			foreach ($cookies as $key=>$value) {
				if (strlen($cookiestring) != 0) $cookiestring .= '; ';
				$cookiestring .= urlencode($key) . '=' . urlencode($value);
			}
		}
	}else{
		$cookiestring=$cookies;
	}
	// Make the POST data header line
	if(is_array($postdata)){
		$postdatastring = "";
		if (sizeof($postdata) > 0) {
			foreach ($postdata as $key=>$value) {
				if (strlen($postdatastring) != 0) $postdatastring .= '&';
				$postdatastring .= urlencode($key) . '=' . urlencode($value);
			}
		}
	}else{
		$postdatastring=$postdata;
	}
	/*
	print "<Debug: Variables>\n";
	print "Server: ".$server."\n";
	print "Path: ".$script."\n";
	print "POST: ".$port."\n";
	print "Cookie: ".$cookiestring."\n";
	print "POST-Data: ".$postdatastring."\n";
	print "<Debug: End Of Variables>\n\n";
	*/

	$s_request="$method $script HTTP/1.1\r\n";
	$s_request.="Host: $server\r\n";
	$s_request.="Accept: */*\r\n";
	if($cookiestring){ //Send Cookie
		$s_request.="Cookie: $cookiestring\r\n";
	}
	if($referer){ //Send Referer
		$s_request.="Referer: $referer\r\n";
	}
	if($useragent){ //Send UserAgent
		$s_request.="User-Agent: $useragent\r\n";
	}
	
	$s_request.="Connection: close\r\n";
	
	if($method == "POST"){ //append POST data.
		$s_request.="Content-Type: application/x-www-form-urlencoded\r\n";
		$s_request.="Content-Length: ".strlen($postdatastring)."\r\n";
		$s_request.="\r\n$postdatastring\r\n";
	}else{ //GET request End with \r\n
		$s_request.="\r\n";
	}
	
	/*
	print "<Debug: Request>\n";
	print $s_request."\n";
	print "<Debug: End Of Request>\n\n";
	*/
	
	//Connect!
	$sock = @fsockopen($server, $port, $errno, $errstr);
	if($sock){
		fwrite($sock, $s_request);
	}else{
		$r_header = "$errstr ($errno)";
		return -1;
	}

	//Receive Header
	$r_header = "";
	while ($str = trim(fgets($sock, 4096)))
	$r_header .= "$str\n";
	//stream_set_timeout($sock, 5);

	//Receive Content
	$r_content = "";
	while (1) {
	    $buf = fread($sock,8192);
	    if (strlen($buf) == 0) break;
	    $r_content .= $buf;
	}
}
?>