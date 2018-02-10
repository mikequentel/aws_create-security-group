#!/bin/bash
NAME=$1

if [ -z "${NAME}" ]; then
  echo 'Name of security group is missing. Example: admin_useast1'
  exit 1
fi

# https://stackoverflow.com/questions/1955505/parsing-json-with-unix-tools
# Thanks to Brian Campbell for the python syntax.
GROUPID=`aws ec2 create-security-group --group-name ${NAME} --description "Security group ${NAME}" | \
  python -c "import sys, json; print json.load(sys.stdin)['GroupId']"`

if [ -z "${GROUPID}" ]; then
  echo 'GroupId is empty.'
  exit 1
fi

echo "GroupId: ${GROUPID}"
aws ec2 describe-security-groups --group-id ${GROUPID}
