SET hive.cli.print.header=true;
SET hive.execution.engine=mr;

SELECT proto, COUNT(*) AS attack_count 
FROM ids.data 
WHERE label = 1 
GROUP BY proto 
ORDER BY attack_count DESC 
LIMIT 10;