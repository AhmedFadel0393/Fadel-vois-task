# Fadel-vois-task
A repo includes ReadMe files and scripts

Two EC2s were created "fadel-1, fadel-2".
One IAM role was created "vois-role" in which we added in policy permessions: "AmazonEC2FullAccess, AmazonS3FullAccess".
One S3 bucket was created "vois-task-bucket".
Two sub dirs were created under S3 bucket. One for each instance log files "Instance-1, Instance-2"

The Bash script used to copy the log files from the EC2s to the S3 Bucket is located in "/home/ec2-user/logs-script.sh"

A cronjob was created to run the scripts on a daily basis at 12:00AM
0 0 * * * sudo /home/ec2-user/logs-script.sh -c

Both S3 bucket and EC2s are created on region Europe (Frankfurt)
Access credentials for the EC2s on vois-user-access.csv on the repo
