<?php
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

function clearSymbols($u){
    $Symbols = array("/",'\\',"*","?",":","|","<",">");
    return substr(str_replace($Symbols, "^", $u),0,50);
}

function getFavIcon($url){
    echo '<img src="https://plus.google.com/_/favicon?domain=' . $url . '">';
}
