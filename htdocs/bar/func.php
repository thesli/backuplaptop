<?php
function getStandardSQLData($url){
    $arr = getArrayOfListOfLinksAndText($url);
    for($i=0;$i<sizeof($arr);$i++){
        echo 'Insert Into ustbar values("","' . $arr[$i][1] . '","' . $arr[$i][0] . '","' . parseTheDomain($arr[$i][1]) . '","' . getWebSnapshotName($arr[$i][1]) .  '","");' . '</br>';
        getWebSnapshot($arr[$i][1]);
    }
}

function getCSV($url){
    $arr = getArrayOfListOfLinksAndText($url);
    for($i=0;$i<sizeof($arr);$i++){
        echo '"","' . $arr[$i][1] . '","' . $arr[$i][0] . '","' . parseTheDomain($arr[$i][1]) . '","' . getWebSnapshotName($arr[$i][1])  . '"</br>';
        getWebSnapshot($arr[$i][1]);
    }
}

function parseTheDomain($url){
    $parse = parse_url($url);
    return $parse['host']; // prints 'google.com'
}

function getTheAnchorTextAndLinks($url){
    $html = file_get_contents($url);

    $dom = new DOMDocument();
    @$dom->loadHTML($html);

// grab all the on the page
    $xpath = new DOMXPath($dom);
    $hrefs = $xpath->evaluate("/html/body//a");

    for ($i = 0; $i < $hrefs->length; $i++) {
        $href = $hrefs->item($i);
        $link = $href->getAttribute('href');
        $txt = $href->nodeValue;
        if(substr($url,0,7)=="http://"){
            echo $txt . $link.'<br />';
        }
    }
}
$k=0;
function getArrayOfListOfLinksAndText($url){
    $arr=Array(Array());
    $arr_new = Array(Array());
    $html = file_get_contents($url);
    $dom = new DOMDocument();
    @$dom->loadHTML($html);

// grab all the on the page
    $xpath = new DOMXPath($dom);
    $hrefs = $xpath->evaluate("/html/body//a");

    for ($i = 0; $i < $hrefs->length; $i++) {
        $href = $hrefs->item($i);
        $link = $href->getAttribute('href');
        $txt = $href->nodeValue;
        if(substr($link,0,3)!="java"&&substr($link,0,5)!="mailto"){
            $arr[$i][0]=$txt;
            $arr[$i][1]=$link;
        }else{
            $arr[$i][0]="";
            $arr[$i][1]="";
        }
    }
    $k=0;
    for($j=0;$j<sizeof($arr);$j++){
        if(($arr[$j][0]!="")&&($arr[$j][1]!="")){
            $arr_new[$k][0]=$arr[$j][0];
            $arr_new[$k][1]=$arr[$j][1];
            $k++;
        }
    }
    return $arr_new;
}

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
    return '<img src="https://plus.google.com/_/favicon?domain=' . $url . '">';
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
        $s = 'C:\wkhtmltopdf\wkhtmltoimage.exe "' . $url . '" "E:\www\img/' . substr($url_noHttp,0,250) . '.jpg"';
        // echo $s;
        execInBackground($s);
        sleep(0.1);
    }else{
        return '<img src="img/' . $url_noHttp . '.jpg" style="width:100px;height:100px;border-radius:50%">';
    }
}
function getWebSnapshotNoPrint($url){
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
        $s = 'C:\wkhtmltopdf\wkhtmltoimage.exe "' . $url . '" "E:\www\img/' . substr($url_noHttp,0,250) . '.jpg"';
        // echo $s;
        execInBackground($s);
        sleep(1);
//        sleep(5);
    }
}
function getWebSnapshotName($url){
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
//    $fe = file_exists("E:/www/img/" . $url_noHttp . ".jpg");
//    if(!$fe){
//        $s = 'C:\wkhtmltopdf\wkhtmltoimage.exe "' . $url . '" "E:\www\img/' . $url_noHttp . '.jpg"';
//        // echo $s;
//        execInBackground($s);
//        sleep(5);
//    }else{
//        return '<img src="img/' . $url_noHttp . '.jpg" style="width:100px;height:100px;border-radius:50%">';
//    }
    return $url_noHttp . ".jpg";
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