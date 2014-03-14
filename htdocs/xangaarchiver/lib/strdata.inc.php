<?
//Find string between two strings
function strdata($data,$beginning,$ending)
{
	$head = strpos($data, $beginning) + strlen($beginning);
	$tail = strpos($data, $ending);
	$len = $tail - $head;
	return(substr($data, $head, $len));
}

?>