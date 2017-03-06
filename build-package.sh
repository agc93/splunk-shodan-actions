#!/bin/bash
shopt -s extglob

extName="TA-Shodan-WorkflowActions"

if [ ! -d ./.build/$extName ]; then 
    mkdir ./.build/$extName
else 
    rm -rf ./.build/$extName/*
fi

cp -r ./!(*.sh|*.tgz) ./.build/$extName/
tar cvpzf ./.build/$extName.tgz -C ./.build --exclude $extName.tgz $extName/

mv ./.build/$extName.tgz .