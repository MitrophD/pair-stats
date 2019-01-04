#!/bin/bash
appDir=src
appEntry="$appDir/index.js"

setConfigOptions() {
  export "$1=$2"
}

currDir=`dirname $0`
source $currDir/common.sh setConfigOptions

export NODE_ENV=development
export NODE_DEBUG=true

npx nodemon -e .js,.pug,.json -q --exec "eslint $appEntry && babel-node $appEntry"