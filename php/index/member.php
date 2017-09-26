<?php
header("Content-Type:application/json");
require("../init.php");
@$mid=$_REQUEST["mid"];
$sql="SELECT * from memberlist WHERE cmid=$mid";
echo json_encode(sql_execute($sql));