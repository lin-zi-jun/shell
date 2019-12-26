#!/bin/bash
begin_time=$(date)    #开始时间，使用``替换
sleep 2s            #休眠20秒
finish_time=$(date)  #结束时间，使用$()替换
echo "Begin time: $begin_time"
echo "Finish time: $finish_time"