<?php
require("dateconv.inc.php");

function gd($data){
	GLOBAL $VAL;
	//all data excluded date
	$expression1='#<table border="0" cellspacing="0" cellpadding="4" width="100%".*?><tr><td width="5%"><p></p></td><td valign=".*?"><h4 class="itemTitle.*?">(.*?)</h4>(.*?)</td></tr><tr><td width="5%"><p></p></td><td valign=".*?" align=".*?"><div class="smalltext"><a.*?href="/private/entryprivacy.aspx?.*?">(.*?)</a> - <a.*?href="http://www.xanga.com/.*?">(.*?)</a> - <a.*?href="/private/editorx.aspx\?uid=(.*?)">edit it</a> - <a.*?href="/send.aspx?.*?">email it</a></div></td></tr></table>#s';
	//date
	$expression2='%<div class="blogheader">(.*?)</div>%';
	//link for next page
	$expression3='%<a href="/[^>]*>(.*?)</a>%si';
	preg_match_all($expression1, $data, $result1,PREG_OFFSET_CAPTURE);
	preg_match_all($expression2, $data, $result2,PREG_OFFSET_CAPTURE);
	preg_match_all($expression3, $data, $result3);

	//Title
	foreach($result1[1] as $k => $ptitle){
		$title[]=$ptitle[0];
		$titleorder[]=$ptitle[1];
	}

	//Content
	foreach($result1[2] as $pcontent){
		$content[]=$pcontent[0];
	}

	//Pirvacy
	foreach($result1[3] as $ppirvacy){
		$pirvacy[]=$ppirvacy[0];
	}

	//Time
	foreach($result1[4] as $ptime){
		$time[]=$ptime[0];
	}

	//Entry ID
	foreach($result1[5] as $pid){
		$id[]=$pid[0];
	}

	//Date
	foreach($result2[1] as $pdate){
		$date[]=$pdate[0];
		$dateorder[]=$pdate[1];
	}

	//Seek for Page Link
	foreach($result3[1] As $key=>$value){
		if($value=='Next 5 &gt;&gt;'){
			$VAL['uri']=strdata($result3[0][$key],'<a href="','">Next 5 &gt;&gt;</a>');
		}
	}
	
	//for date ordering
	$dateorder_sort=0;

	//Loop start
	for($i=0;$i<5;$i++){

	//put date and entries in correct order
	if($titleorder[$i] - $dateorder[$dateorder_sort] > 0 && $dateorder[$dateorder_sort]){
		$dateorder_sort++;
		$entrydate=ndate($date[$dateorder_sort-1]);
	}else{
		$entrydate=ndate($date[$dateorder_sort-1]);
	}

		if($VAL['range']=='region'){ //Check region limit
			$currtimpstamp=@mktimestamp($entrydate);

			if($currtimpstamp<$VAL['fromdatestamp']){
				if(!$VAL['num']){
					die('The selected region have no entry!');//No any entry
				}else{
					die("This is the end of your archive. Total Entries: {$VAL['num']}");
				}
			}
		}

		if ($i>=sizeof($content)){//No entry
			if(!$VAL['num']){
				die('Your blog has no entry!');//No any entry
			}else{
				die("This is the end of your archive. Total Entries: {$VAL['num']}");
			}
		}else{
			//Output Date
			print "<b><!--EntryDateStart-->".$entrydate."<!--EntryDateEnd-->";
			//Output Time
			print "(<!--EntryTimeStart-->".$time[$i]."<!--EntryTimeEnd-->)";
			//Output Title
			print " - <!--TitleStart-->".$title[$i]."<!--TitleEnd-->";
			//Output entry number
			print " #".++$VAL['num']."</b>";
			//Output entry type
			print " (<!--EntryTypeStart-->".$pirvacy[$i]."<!--EntryTypeEnd-->)<br>\n";
			//Output entry content
			print '<!--EntryStart-->'.$content[$i].'<!--EntryEnd-->';
			echo "<hr>\n\n";
		}
	}
	
	//End Loop
}
?>