SET hive.cli.print.header=true;
SET hive.execution.engine=mr;

SELECT d1.srcip, d1.dstip, COUNT(*) AS connection_count 
FROM ids.data d1 
JOIN ids.data d2 ON d1.srcip = d2.dstip 
GROUP BY d1.srcip, d1.dstip 
ORDER BY connection_count DESC 
LIMIT 10;