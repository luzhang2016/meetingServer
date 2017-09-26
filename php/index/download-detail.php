<?php
header("Content-Type:application/json");
header("Access-Control-Allow-origin:*");
require_once("../init.php");
@$fid=$_REQUEST["fid"];
if($fid){
 $sql="SELECT * FROM attachment WHERE fid=$fid ";  
 $output=sql_execute($sql);
 $sql="SELECT * FROM downloader WHERE dfid=$fid";
 $output["Download"]=sql_execute($sql);
 echo json_encode($output);
}