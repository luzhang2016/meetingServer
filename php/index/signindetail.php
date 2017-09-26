<?php
header("Content-Type:application/json");
header("Access-Control-Allow-origin:*");
require("../init.php");
@$mid=$_REQUEST["mid"];
@$phone=$_REQUEST["phone"];
if($mid&&$phone){
    $sql="SELECT COUNT(*) FROM memberlist WHERE cmid=$mid";
    $memberTotal=sql_execute($sql);
    $memberTotal=$memberTotal[0]["COUNT(*)"];#获取总人数
    $sql="SELECT * FROM memberlist WHERE cmid=$mid AND Mobile=$phone";
    $output=sql_execute($sql);
    $output[0]["memberTotal"]=$memberTotal;
    echo json_encode($output);
}