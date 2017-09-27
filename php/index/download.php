<?php
header("Content-Type:application/json");
header("Access-Control-Allow-origin:*");
require_once("../init.php");
@$flag=$_REQUEST["flag"];
@$mid=$_REQUEST["mid"];
if($mid){
 $sql="SELECT * FROM attachment WHERE fmid=$mid AND Flag=$flag";
 $output=sql_execute($sql);
 for($i=0;$i<count($output);$i++){
     $fid= $output[$i]['fid'];
     $sql="SELECT * FROM downloader WHERE dfid='$fid'";
     $output[$i]["Download"]=sql_execute($sql);
 }
 echo json_encode($output);   
}
