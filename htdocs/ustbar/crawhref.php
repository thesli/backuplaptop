// <?php 
// $xml = simplexml_load_string();
// $list = $xml->xpath("//@href");

// $prepareUrls = array();
// foreach ($list as $item) {
// 	$item = parse_url($item);
// 	$prepareUrls[] = $item["scheme"] . '://' . '/';
// }
// print_r($prepareUrls);

//  ?>

// <?php 
// $dom =new DOMDocument;
// $html = "yahoo.com.html";
// $dom->loadHTMLFile($html);
// echo $dom->saveHTML();
// foreach ($dom->getElementsByTagName("a") as $node) {
// 	echo $dom->saveHTML($node),PHP_EOL;
// }

//  ?>

<?php 
$doc = new DOMDocument;
$doc->simplexml_load_file("yahoo.com.html");
$items = $doc->getElementsByTagName("a");
foreach ($items as $value) {
	echo $value->nodeValue . "\n";
	$attrs = $value->attributes;
	echo $attrs->getNamedItem('href')->nodeValue . "\n";
}
 ?>