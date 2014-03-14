<?php
//Entry date format converter
function ndate($date) {
list(, $month, $day, $year) = split ('[ .-]', $date);
$year=$year;
$month=$month;
$day=substr($day,0,strlen($day)-1);

$org = array("January", "February", "March", "April", "May", "June", "July", "August" ,"September", "October", "November" ,"December");
$new  = array("01", "02", "03" ,"04", "05", "06", "07", "08", "09", "10", "11", "12");
$month = str_replace($org, $new, $month);
return($year."-".$month."-".$day);
}

function mktimestamp($date){
$seq=explode('-',$date);
return(mktime(0,0,0,$seq[1],$seq[2],$seq[0]));
}

function mktimestamp2($date){
$seq=explode('/',$date);
return(mktime(0,0,0,$seq[0],$seq[1],$seq[2]));
}

?>