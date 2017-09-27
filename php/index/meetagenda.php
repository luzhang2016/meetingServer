<?php
header("Content-Type:application/json");
header("Access-Control-Allow-origin:*");
require("../init.php");
@$mid=$_REQUEST["mid"];
if($mid){
    $sql="SELECT * FROM meetingprocess WHERE pmid = $mid";
    echo json_encode(sql_execute($sql));
}

