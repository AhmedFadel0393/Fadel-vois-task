#!/bin/bash

#Vars

LOG_FILE="/var/log/"
BUCKET="s3://vois-task-bucket/Instance-1/"

#Comand

aws s3 sync $LOG_FILE $BUCKET
