NSWeb Solutions Visual Change tracker
=====================================

[![Build Status](https://travis-ci.org/pmgupte/webmon.png?branch=master)](https://travis-ci.org/pmgupte/webmon)

##License
NSWeb Solutions Visual Change tracker - program to monitor web pages for change and detect the change with email alerts
Copyleft (C) NSWeb Solutions - 2016

Based on the great work of Prabhas Gupte (Webmon)

NSWeb Solutions Visual Change tracker is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

NSWeb Solutions Visual Change tracker is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with NSWeb Solutions Visual Change tracker.  If not, see <http://www.gnu.org/licenses/gpl.txt>

##About NSWeb Solutions Visual Change tracker
NSWeb Solutions Visual Change tracker collection of scripts to monitor web pages.

It have following objectives:

1) Detect whether listed webpage have any change in contents.

2) If change is detected, calculate the difference, and output what have changed. 

3) Detect both - positive and negative changes.

4) Send an email alert if any change

##Dependencies
Bash and PHP and working postfix/exim/whatever mail sender working on your server with mailx command

##Tested on
PHP 5.6 with Debian 8

##Installation
<code>mkdir /opt/nsw-vct/ && cd /opt/nsw-vct/ && wget https://raw.githubusercontent.com/nswebsolutions/NSWeb-Solutions-Visual-Change-tracker/master/alert.sh --no-check-certificate && wget https://raw.githubusercontent.com/nswebsolutions/NSWeb-Solutions-Visual-Change-tracker/master/gpl.txt --no-check-certificate && wget https://raw.githubusercontent.com/nswebsolutions/NSWeb-Solutions-Visual-Change-tracker/master/list.txt --no-check-certificate && wget https://raw.githubusercontent.com/nswebsolutions/NSWeb-Solutions-Visual-Change-tracker/master/webmon.php --no-check-certificate && chmod +x /opt/nsw-vct/webmon.php && chmod +x /opt/nsw-vct/alert.sh</code>

Change url to monitor in <code>/opt/nsw-vct/list.txt</code> and test with <code>/opt/nsw-vct/webmon.php && /opt/nsw-vct/alert.sh</code>

Add this in your crontab : <code>* * * * * /opt/nsw-vct/alert.sh > /dev/null 2>&1</code>

For debug, add this in your crontab : <code>* * * * * /opt/nsw-vct/alert.sh > /var/log/nsw-vct.log </code>


##Features planned
Librenms integration
