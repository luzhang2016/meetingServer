<?php
header("Content-Type:application/json");
header("Access-Control-Allow-origin:*");
require("../init.php");
@$mid=$_REQUEST["mid"];
$sql="SELECT * from memberlist WHERE cmid=$mid";
echo json_encode(sql_execute($sql));