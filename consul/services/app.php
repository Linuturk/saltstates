<?php

echo "<h1>app: ".$_SERVER['SERVER_NAME']."</h1>";

$ips = exec('dig @127.0.0.1 -p 8600 mysql.service.iad.consul +short');

echo "<h1>db:$ips</h1>";
foreach ($ips as $ip) {
  echo "<h2>$ip</h2>";
}

?>
