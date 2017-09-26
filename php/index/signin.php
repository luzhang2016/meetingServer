<?php
header("Content-Type:application/json");
header("Access-Control-Allow-origin:*");
require("../init.php");
    @$mid=$_REQUEST["mid"];
    @$phone=$_REQUEST["phone"];
    @$place=$_REQUEST["result"];
if($mid&&$phone&&$place){
    $sql="SELECT COUNT(*) FROM memberlist WHERE cmid=$mid";
    $memberTotal=sql_execute($sql);
    $memberTotal=$memberTotal[0]["COUNT(*)"];#获取总人数
    $sql="SELECT MAX(SignInIndex) FROM memberlist WHERE cmid=$mid";
    $index=sql_execute($sql);
    $index=$index[0]['MAX(SignInIndex)']+1;#获取签到排名
    $now=time();
    $sql="UPDATE memberlist SET SignInFlag=1,SignInTime=$now, SignInAddr='$place',SignInIndex='$index' WHERE cmid=$mid AND Mobile=$phone ";
    sql_run($sql);
    $sql="SELECT * FROM memberlist WHERE cmid=$mid AND Mobile=$phone";
    $output=sql_execute($sql);
    $output[0]["memberTotal"]=$memberTotal;
    $output[0]["signInIndex"]=$index;
    echo json_encode($output);
}
