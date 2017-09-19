# saucelabs-script

This is a bash script that uses the AWS Cli to copy logs produced by running a jar file. 

In this case I've built the ec2 instance using a role.  Which removes the need to have api keys installed on the instance.

Details for roles:
http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html

How to install the AWS Cli:
http://docs.aws.amazon.com/cli/latest/userguide/installing.html
