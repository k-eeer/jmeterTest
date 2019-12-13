#!/bin/bash

#delete all the old file to prevent error
rm *jtl result.txt allwebtest.txt

#run jemter in non-GUI mode
/home/kate/apache-jmeter-5.1.1/bin/jmeter -nt allwebtest.jmx -l allwebtest.jtl -j allwebtest.log

#extract threadName, success and URL of the result
cat allwebtest.jtl|grep -v stress |awk  -F "," '{print $3,$8,$14}'>result.txt
sed -i -e  '1d' result.txt
cat result.txt| awk   '{printf "%s%s\t%s\t%s\n", $1,$2,$3,$4}'>allwebtest.txt
head1=$(head -1 *jtl|awk  -F "," '{printf "%s\t%s\t%s\n" ,$6,$8,$14}')
sed "1 i$head1" -i allwebtest.txt

#rm *jtl result.txt allwebtest.txt *log
#push to remote repo
git add .
git pull origin master
git commit -m "initial commit"
git push -u origin master
