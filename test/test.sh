#!/bin/bash

TMP1=`mktemp`
TMP2=`mktemp`

make test$1  2>&1 | grep -v sdriver > "$TMP1"
make rtest$1 2>&1 | grep -v sdriver > "$TMP2"

echo "expected output:"
cat "$TMP2"
echo
echo

echo "my output:"
if [ ! -z "$2" ]
then
    cat "$TMP1" | grep -v "$2"
else
    cat "$TMP1"
fi
echo

rm "$TMP1" "$TMP2"
