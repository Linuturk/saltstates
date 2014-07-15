<?php

echo "<h1>app: ".$_SERVER['SERVER_NAME']."</h1>";

$hostname = exec('hostname');
echo "<h2>$hostname</h2>";

$ips = exec('dig @127.0.0.1 -p 8600 mysql.service.iad.consul +short');
echo "<h1>db: $ips</h1>";

?>
