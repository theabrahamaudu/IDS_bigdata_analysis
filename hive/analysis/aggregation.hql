SET hive.cli.print.header=true;
SET hive.execution.engine=mr;

SELECT attack_cat, AVG(dur), AVG(sbytes), AVG(dbytes) 
FROM ids.data GROUP BY attack_cat;
