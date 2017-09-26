<?php
header("Content-Type:application/json");
header("Access-Control-Allow-origin:*");
require("../init.php");
@$mid=$_REQUEST["mid"];
@$phone=$_REQUEST["phone"];
if($mid){
    $sql="SELECT * FROM meetinglist where mid =$mid ";
    $output=sql_execute($sql);
    $sql="SELECT * FROM meetingprocess WHERE pmid = $mid";
    $output[0]["MeetingAgenda"]=sql_execute($sql);
    $sql="SELECT SignInFlag from memberlist WHERE cmid = $mid AND Mobile=$phone";
    $output[0]["SignInFlag"]=sql_execute($sql)[0]["SignInFlag"];
    $output["msg"]="ok";
}else{
    $output["msg"]="err";
}


echo json_encode($output);
#echo sql_execute($sql);
#STime,ETime,Title,Name,Content,Summary