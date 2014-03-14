<?php
/**
 * Created by JetBrains PhpStorm.
 * User: sliversniper
 * Date: 4/24/13
 * Time: 4:39 AM
 * To change this template use File | Settings | File Templates.
 */
$url = "http://my.ust.hk/fsdfdsf/fdsafds.html";
$parse = parse_url($url);
print $parse['host']; // prints 'google.com'