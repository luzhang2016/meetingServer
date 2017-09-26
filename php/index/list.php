<?php
header("Content-Type:application/json");
header("Access-Control-Allow-origin:*");
require("../init.php");
$sql="SELECT mid,MeetingName,MeetingAddr,StartTime,MeetingStatus FROM meetinglist";
echo json_encode(sql_execute($sql));