#!/bin/bash

#delete all the old file to prevent error
rm *jtl resultTem.txt quickChecResult.txt

#run jemter in non-GUI mode
$HOME/apache-jmeter-5.1.1/bin/jmeter -nt allwebtest.jmx -l allwebtest.jtl -j allwebtest.log

#extract threadName, success and URL of the result
cat allwebtest.jtl|grep -v stress |awk  -F "," '{print $3,$8,$14}'|grep -v "\-[0-9] ">resultTem.txt
sed -i -e  '1d' resultTem.txt
uniq -w 5 resultTem.txt| awk   '{printf "%s\t%s\t%s\n", $1,$2,$3}'>quickChecResult.txt
head1=$(head -1 *jtl|awk  -F "," '{printf "%s\t%s\t%s\n" ,$6,$8,$14}')
sed "1 i$head1" -i quickChecResult.txt


#push to remote repo
git add .
git pull origin master
git commit -m "initial commit"
git push -u origin master
