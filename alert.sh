#!/bin/bash
File=/opt/nsw-vct/webmon.log

/opt/nsw-vct/webmon.php -i list.txt > /opt/nsw-vct/webmon.log
if grep -q "Changed" "$File"
then
        echo "Bad"
        sed "s/\x1B\[[0-9;]*[JKmsu]//g" /opt/nsw-vct/webmon.log > /opt/nsw-vct/clean.log
        mailx -s "CRITICAL VISUAL CHANGE" your@domain.com < /opt/nsw-vct/clean.log
else
        echo "Good"
fi
