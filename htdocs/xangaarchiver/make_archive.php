<?php
ob_get_contents();
$ver='0.14';

if($_COOKIE['xusername'] && $_COOKIE['u'] && $_COOKIE['x'] && $_COOKIE['y']){
	header('Content-Disposition: attachment; filename="Xanga_Archive_'.$_COOKIE['xusername'].'_'.date('d-m-Y H-i-s').'.htm"');
	require("lib/getdata.inc.php");
	require("lib/UltimateSocksFunction.inc.php");
	require("lib/strdata.inc.php");

	$VAL['fromdate']=$_POST['fromdate'];
	$VAL['todate']=$_POST['todate'];
	$VAL['fromdatestamp']=mktimestamp2($VAL['fromdate']);

	$VAL['range']=$_POST['range'];
	
	if($VAL['range']=='region'){
		$show_range=$VAL['fromdate'].' - '.$VAL['todate'];
	}else{
		$show_range='All';
	}

		print '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=big5" />
<title>Xanga Archive</title>
</head>
<body><h1>Xanga Archive (Created by <a href="http://sourceforge.net/projects/xangaarchiver">Xanga Archiver Open Source</a>)</h1><br>
Generated at '.date('d/m/Y H:i:s').'<br>
Username: '.$_COOKIE['xusername'].'<br>
Site owner: Yes <br>Region: '.$show_range.'<br>
Program Version: '.$ver.'<hr>
';
		
		if($VAL['range']=='region'){
			$url="http://www.xanga.com/private/yourhome.aspx?user=".$_COOKIE['xusername'].'&nextdate='.urlencode(date('m/d/Y',mktimestamp2($VAL['todate']))).urlencode(' 23:59:59.999').'&direction=n';
		}else{
			$url="http://www.xanga.com/private/yourhome.aspx?user=".$_COOKIE['xusername']; //Make URL
		}
		$cookies[u]=$_COOKIE['u'];
		$cookies[x]=$_COOKIE['x'];
		$cookies[y]=$_COOKIE['y'];
		$cookies[t]='1';
		sockshttpconnect($url);
		gd($r_content);

		for($i=0;$i<=1000;$i++){ //Seek for Next Page
			preg_match_all('%<a href="home.aspx[^>]*>(.*?)</a>%si', $r_content, $n_result); //Seek for Next Page (1st step)

			//Seek for Next Page (2nd step)
			foreach($n_result[1] As $key=>$value){
				if($value=='Next 5 &gt;&gt;'){
					$uri=strdata($n_result[0][$key],'<a href="','">Next 5 &gt;&gt;</a>');
				}
			}
			//No Links
			if(!$uri){
				die("This is the end of your archive. Total Entries: {$VAL['num']}");
			}
			
			$url="http://www.xanga.com/private/".$uri; 
			$url=str_replace('http://www.xanga.com/private/home.aspx','http://www.xanga.com/private/yourhome.aspx',$url);
			sockshttpconnect($url); //Connect

			gd($r_content);//Send Data to processor
			$uri='';
			ob_flush();
			flush();
		}
		print '
</body>
</html>';
}else{
	header('Location: index.php?mode=backup');
}

?>