
#! /bin/bash

folder1=$(date +%Y%m)
folder2=$(date +%Y%m%d_%H%M%S)

mkdir -p /home/ec2-user/ecfs/"$folder1"
mkdir -p /home/ec2-user/ecfs/"$folder2"

xvfb-run java -jar /home/ec2-user/ECFS_Functional_Test.jar

mv  /home/ec2-user/ecfs/ECFS* /home/ec2-user/ecfs/"$folder2"

mv /home/ec2-user/ecfs/"$folder2" /home/ec2-user/ecfs/"$folder1"/"$folder2"

aws s3 sync /home/ec2-user/ecfs/ s3://fcc-ecfs-logs/
