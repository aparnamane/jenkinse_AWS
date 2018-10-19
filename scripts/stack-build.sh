#!/bin/sh

source parameters
echo $STACKNAME

echo "--- Checking if stacks $STACKNAME is exist"
aws cloudformation describe-stacks --region ap-southeast-2 --stack-name $STACKNAME
if [ $? == 0 ]; then
  echo "Updating the $STACKNAME"
  aws cloudformation update-stack --stack-name $STACKNAME --template-body file://template1.yaml --region ap-southeast-2
else
  echo "Creating $STACKNAME"
  aws cloudformation create-stack --stack-name $STACKNAME --template-body file://template1.yaml --region ap-southeast-2
fi