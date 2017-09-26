<?php
header("Content-Type:application/json");
header("Access-Control-Allow-origin:*");
require_once("../init.php");
@$flag=$_REQUEST["flag"];
@$mid=$_REQUEST["mid"];
if($mid&&$flag){
 $sql="SELECT * FROM attachment WHERE fmid=$mid AND Flag=$flag";
 echo json_encode(sql_execute($sql));   
}
