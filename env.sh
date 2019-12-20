#!/bin/sh

# source this file to get environment setup for the
# yanger below here

p=`pwd`
export PATH=$p/bin:$PATH
export YANG_MODPATH=$p/modules:$YANG_MODPATH
export W=$p

if [[ "$(uname 2> /dev/null)" == "Darwin" ]]; then
  echo "Using Mac OS version $(sw_vers -productVersion)"
  if [[ "$(sw_vers -productVersion)" == "10.15"* ]]; then
    export PKG_CONFIG_PATH="/usr/local/opt/libxml2/lib/pkgconfig"
  fi
fi
