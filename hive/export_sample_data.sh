#! /bin/sh

hive -e "set hive.cli.print.header=true;\
         select * from ids.data limit 9;"\
         > ./data/processed/first_nine.csv