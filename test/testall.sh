TMP1=`mktemp`
TMP2=`mktemp`

for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16
do
    make test$i  2>&1 | grep -v sdriver | sed 's/(.*)/(XXXXX)/g' > "$TMP1"
    make rtest$i 2>&1 | grep -v sdriver | sed 's/(.*)/(XXXXX)/g' > "$TMP2"
    echo "----- diff $i ---------------------"
    diff "$TMP1" "$TMP2"
    echo '==================================='
done

rm "$TMP1" "$TMP2"
