#!/bin/bash
begin_time=`date +%s`    #开始时间，使用``替换
sleep 2s                #休眠20秒
finish_time=$(date +%s)  #结束时间，使用$()替换
run_time=$((finish_time - begin_time))  #时间差
echo "begin time: $begin_time"
echo "finish time: $finish_time"
echo "run time: ${run_time}s"