<?php
/**
 * Created by JetBrains PhpStorm.
 * User: sliversniper
 * Date: 4/24/13
 * Time: 4:41 AM
 * To change this template use File | Settings | File Templates.
 */
$q = $_GET["query"];
$qarr = explode(" ",$q);
$s = " ";
$r = " ";
$t = " or Tags like '%" . $qarr[0] . "%'";
for($j=1;$j<sizeof($qarr);$j++){
    $s = $s . " and Text like '%" . $qarr[$j] . "%'";
    $r = $r . " or Tags like '%" . $qarr[$j] . "%'";
    }
include("conn.php");
$sql = "select * from ustbar where Text like '%" . $qarr[0] . "%' " .$t . $s . $r;
//echo $sql;
$r = mysqli_query($conn,$sql);
//echo "<pre>";
//while($row = mysqli_fetch_row($r)){
//    print_r($row);
//}
//echo "</pre>";
//$rows = array();
$i=0;
$id;
while($row = mysqli_fetch_assoc($r)) {
    $id[$i] = $row["ID"];
    $txt[$i] = $row["Text"];
    $link[$i] = $row["Link"];
    $domain[$i] = $row["Domain"];
    $snapshot[$i] = $row["SnapShot"];
    $i++;
}
$num = mysqli_num_rows($r);
//echo $id[3];
//echo $snapshot[2];

//echo $jsonresult = json_encode($rows);
//$row = mysqli_fetch_array($r);
//echo $row[1][1];
//echo;
if(isset($id[0])){
    for($k=0;$k<sizeof($id);$k++){
        echo <<<EOT
    <div class="box">
        <img class="snapshot" src="img/$snapshot[$k]"></img>
        <a href="$link[$k]" class="link"><div class="boxContent">$txt[$k]</br>@$domain[$k]</div></a>

    </div>
EOT;

    }


}

echo <<<EOT
    <div class="ender">
        $num total of records fullfil the requirements
    </div>
EOT;

?>