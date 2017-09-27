SET NAMES UTF8;
DROP DATABASE IF EXISTS meeting;
CREATE DATABASE meeting CHARSET=UTF8;
USE meeting;
#创建主表
CREATE TABLE meetinglist (
    mid INT PRIMARY KEY AUTO_INCREMENT,
    MeetingName VARCHAR(32),
    MeetingAddr VARCHAR(32),
    StartTime VARCHAR(20),
    EndTime VARCHAR(20),
    MeetingNature INT,
    MeetingSummary VARCHAR(128),
    MeetingContent VARCHAR(256),
    SendMethod INT,
    MessageContent VARCHAR(128),
    TemplateID INT,
    SendTimeFlag INT,
    MeetingStatus INT,
    PublishStatus INT,
    ReleaseTime VARCHAR(20),
    CreateUser VARCHAR(20),
    CreateTime VARCHAR(20),
    UpdateTime VARCHAR(20)
);
INSERT INTO meetinglist VALUES(null,"第一个会议","黄龙体育中心","2017-09-14 8:00:00","2017-09-14 10:00:00",1,"第一个会议的摘要","第一个会议的内容",2,"第一个会议的短信内容",0,0,2,1,"2017-09-01 00:00:00","管理员","更新人","2017-09-01 01:00:00");
INSERT INTO meetinglist VALUES(null,"第二个会议","完赛体育中心","2017-10-14 8:00:00","2017-10-14 12:00:00",1,"第二个会议的摘要","第二个会议的内容",2,"第二个会议的短信内容",0,0,3,1,"2017-10-01 00:00:00","管理员","更新人","2017-10-01 01:00:00");
INSERT INTO meetinglist VALUES(null,"第三个会议","杭州体育中心","2017-11-14 20:00:00","2017-10-18 18:00:00",1,"第二个会议的摘要","第二个会议的内容",2,"第二个会议的短信内容",0,0,4,1,"2017-11-01 00:00:00","管理员","更新人","2017-11-01 01:00:00");
#创建参会人员表
CREATE TABLE memberlist (
    cid INT PRIMARY KEY AUTO_INCREMENT,
    cmid INT,
    Name VARCHAR(8),
    Mobile BigINT,
    Branch VARCHAR(8),
    Duty VARCHAR(8),
    Flag INT,
    SignInFlag INT,
    SignInTime BigINT,
    SignInAddr VARCHAR(20),
    SignInIndex VARCHAR(5)
);
INSERT INTO memberlist VALUES(null,1,"张三",13806619662,"省政府","局长",1,0,null,null,'0');
INSERT INTO memberlist VALUES(null,1,"李四",14444444444,"行政部","部长",2,0,null,null,'0');
INSERT INTO memberlist VALUES(null,1,"王五",15555555555,"督查组","专员",3,0,null,null,'0');
INSERT INTO memberlist VALUES(null,2,"张三",13806619662,"省政府","局长",1,0,null,null,'0');
INSERT INTO memberlist VALUES(null,2,"李四",14444444444,"行政部","部长",2,0,null,null,'0');
INSERT INTO memberlist VALUES(null,2,"王五",15555555555,"督查组","专员",3,0,null,null,'0');

#创建会议附件表
CREATE TABLE attachment(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    fmid INT,
    FileName VARCHAR(8),
    FileExtension VARCHAR(8),
    Url VARCHAR(128),
    UploadUser VARCHAR(8),
    UploadTime VARCHAR(20),
    FileLength INT,
    DownloadTimes INT,
    Flag INT
);
INSERT INTO attachment VALUES(null,1,"一会议资料","doc","http://www.baidu.com","张三","2017-10-14 8:00:00",654654,0,0);
INSERT INTO attachment VALUES(null,1,"一会议资料","doc","http://www.baidu.com","张三","2017-10-14 8:00:00",654654,0,0);
INSERT INTO attachment VALUES(null,1,"一会议记录","doc","http://www.baidu.com","张三三","2017-10-14 8:00:00",654654,0,1);
INSERT INTO attachment VALUES(null,1,"一会议记录","doc","http://www.baidu.com","张三三","2017-10-14 8:00:00",654654,0,1);
INSERT INTO attachment VALUES(null,2,"2会议资料","doc","http://www.baidu.com","张三","2017-10-14 8:00:00",654654,0,0);
INSERT INTO attachment VALUES(null,2,"2会议资料","doc","http://www.baidu.com","张三","2017-10-14 8:00:00",654654,0,0);
INSERT INTO attachment VALUES(null,2,"2会议记录","doc","http://www.baidu.com","张三三","2017-10-14 8:00:00",654654,0,1);
INSERT INTO attachment VALUES(null,2,"2会议记录","doc","http://www.baidu.com","张三三","2017-10-14 8:00:00",654654,0,1);

#创建附件下载详情表
CREATE TABLE downloader(
    did INT PRIMARY KEY AUTO_INCREMENT,
    dfid INT,
    DownloadUser VARCHAR(8),
    DownloadTime VARCHAR(20)
);
INSERT INTO downloader VALUES(null,1,"张三","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,1,"两点开","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,1,"鹅肉","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,1,"玩儿","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,2,"张三","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,2,"地方","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,2,"发多少","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,2,"的的","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,3,"张三","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,3,"地方","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,3,"发多少","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,3,"的的","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,4,"张三","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,4,"地方","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,4,"发多少","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,4,"的的","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,5,"张三","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,5,"地方","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,5,"发多少","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,5,"的的","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,6,"张三","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,6,"地方","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,6,"发多少","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,6,"的的","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,7,"张三","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,7,"地方","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,7,"发多少","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,7,"的的","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,8,"张三","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,8,"地方","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,8,"发多少","2017-10-14 8:00:00");
INSERT INTO downloader VALUES(null,8,"的的","2017-10-14 8:00:00");

#创建会议议程表
CREATE TABLE meetingprocess (
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pmid INT,
    STime VARCHAR(20),
    ETime VARCHAR(20),
    Title VARCHAR(20),
    Name VARCHAR(20),
    Content VARCHAR(128),
    Summary VARCHAR(128)
);
INSERT INTO meetingprocess VALUES (null,1,"2017-10-14 08:00","2017-10-14 08:30","主持人开场1","张三","今日会议内容今日会议内容今日会议内容","这是会议摘要");
INSERT INTO meetingprocess VALUES (null,1,"2017-10-14 09:00","2017-10-14 09:30","主持人开场2","张三","今日会议内容今日会议内容今日会议内容","这是会议摘要");
INSERT INTO meetingprocess VALUES (null,1,"2017-10-14 09:30","2017-10-14 10:30","主持人开场3","张三","今日会议内容今日会议内容今日会议内容","这是会议摘要");
INSERT INTO meetingprocess VALUES (null,1,"2017-10-14 12:30","2017-10-14 13:30","主持人开场4","张三","今日会议内容今日会议内容今日会议内容","这是会议摘要");
INSERT INTO meetingprocess VALUES (null,2,"2017-10-14 08:00","2017-10-14 08:30","主持人开场1","张三","今日会议内容今日会议内容今日会议内容","这是会议摘要");
INSERT INTO meetingprocess VALUES (null,2,"2017-10-14 09:00","2017-10-14 09:30","主持人开场2","张三","今日会议内容今日会议内容今日会议内容","这是会议摘要");
INSERT INTO meetingprocess VALUES (null,2,"2017-10-14 09:30","2017-10-14 10:30","主持人开场3","张三","今日会议内容今日会议内容今日会议内容","这是会议摘要");
INSERT INTO meetingprocess VALUES (null,2,"2017-10-14 12:30","2017-10-14 13:30","主持人开场4","张三","今日会议内容今日会议内容今日会议内容","这是会议摘要");

#创建用户列表
CREATE TABLE meetingusers(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(10),
    upwd VARCHAR(10),
    uphone BigINT
);
INSERT INTO meetingusers VALUES(null,"张三","123123",13806619662 );