#!/usr/bin/env sh

  ps -ef | grep startup.sh | grep -v grep | awk '{print $2}' | xargs kill -9  
  ps -ef | grep batt.sh | grep -v grep | awk '{print $2}' | xargs kill -9  
