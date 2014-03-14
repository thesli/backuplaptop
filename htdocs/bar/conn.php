<?php
/**
 * Created by JetBrains PhpStorm.
 * User: sliversniper
 * Date: 4/24/13
 * Time: 3:18 AM
 * To change this template use File | Settings | File Templates.
 */

$conn = mysqli_connect("127.0.0.1","root","");
mysqli_select_db($conn,"ustbar");
//if (mysqli_connect_errno($conn))
//{
//    echo "Failed to connect to MySQL: " . mysqli_connect_error();
//}else{
//    echo "Successfull connected to MySQL";
//}
?>