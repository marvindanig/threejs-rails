#!/bin/sh

set -e

if [ $# -eq 0 ]; then
  echo "No tag supplied. Usage: ./update.sh 0.0.1.alpha"
  exit 1
fi

TAG=$1
EXTRACT_DIRECTORY="$$$(date "+%Y%m%d%H%M%S")"
FILE_NAME="$EXTRACT_DIRECTORY.tar.gz"
RELEASE_URL="https://github.com/mrdoob/three.js/tree/master/build"
RELEASE_PATH="$EXTRACT_DIRECTORY/.$TAG"

VENDOR_JS_PATH="vendor/assets/javascripts"

wget -O $FILE_NAME $RELEASE_URL 
mkdir $EXTRACT_DIRECTORY
tar xfz $FILE_NAME -C $EXTRACT_DIRECTORY

cp "$RELEASE_PATH/dist/three.js" $VENDOR_JS_PATH
cp "$RELEASE_PATH/dist/three.min.js" $VENDOR_JS_PATH

# for file in "$RELEASE_PATH/src/i18n/"*; do
#   base_name=$(basename "$file")
#   final_name="three.$(echo $base_name)"
#   cp $file "$VENDOR_JS_PATH/$final_name"
# done


rm -rf $FILE_NAME $EXTRACT_DIRECTORY
