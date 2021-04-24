#!/bin/bash

dir1=folder1
dir2=folder2
dir3=folder3

changes=$(git diff --name-only --diff-filter=ADMR @~..@)

if echo $changes | grep $dir1 &> /dev/null 
then
	curl -I -u root:117ae3e941a243a87e1ec70039664439d1  http://13.234.117.98:8080/job/folder2-test/build?token=mytoken
fi

if echo $changes | grep $dir2 &> /dev/null
then 
	curl -I -u root:117ae3e941a243a87e1ec70039664439d1  http://13.234.117.98:8080/job/folder1-test/build?token=mytoken
fi


if echo $changes | grep $dir3 &> /dev/null
then
        curl -I -u root:117ae3e941a243a87e1ec70039664439d1  http://13.234.117.98:8080/job/folder3-test/build?token=mytoken
fi
