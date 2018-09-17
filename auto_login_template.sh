#!/usr/bin/expect
# 实际关键中 将 **** 部分替换成对应的ip或密码或其他参数
set timeout 10
set proxyPasswd "********"
set dbProxyPasswd "********"
set nodeProxyPasswd "********"
set nodeName [lindex $argv 0]

if {$argc < 1 } {
    set nodeName ""
}

spawn ssh root@172.16.0.17
expect "password:"
send "${proxyPasswd}\r"
expect "~]#"

if {$nodeName == "db"} {
    send "ssh root@172.16.0.17\r"
    expect "password:"
    send "${dbProxyPasswd}\r"
    expect "~"
    send "mysql -h *** -u*** -p***  -P3330 -D*** \r"
    interact
}
if {"msdb"== ${nodeName}} {
    send "ssh root@172.16.0.17\r"
    expect "password:"
    send "${dbProxyPasswd}\r"
    expect "~]#"
    send "mysql -h *** -u*** -p***  -P3330 -D*** \r" 

    interact
}

if {$argc > 0 } {
     send "ssh root@172.16.0.${nodeName}\r"
    expect "password:"
    send "${nodeProxyPasswd}\r"
    expect "~"
    interact
}
if  {$argc <= 0} {
    send "ssh root@172.16.0.18\r"
    expect "password:"
    send "${dbProxyPasswd}\r"
    expect "~"
    interact

}
