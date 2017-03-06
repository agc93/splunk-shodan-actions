#!/bin/bash
shopt -s extglob

extName="TA-Shodan-WorkflowActions"

if [ ! -d ./.build/$extName ]; then 
    mkdir -p ./.build/$extName
else 
    rm -rf ./.build/$extName/*
fi

cp -r ./!(*.sh|*.tgz|*.yml) ./.build/$extName/
tar cvpzf ./.build/$extName.tgz -C ./.build --exclude $extName/docs --exclude $extName.tgz $extName/

mv ./.build/$extName.tgz .