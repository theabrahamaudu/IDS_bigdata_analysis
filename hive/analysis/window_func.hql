SET hive.cli.print.header=true;
SET hive.execution.engine=mr;

WITH ranked_load AS (
    SELECT srcip, dstip, sload, dload, LAG(sload, 1) 
    OVER (PARTITION BY srcip ORDER BY stime) AS prev_sload 
    FROM ids.data
)
SELECT srcip, dstip, sload, dload, prev_sload 
FROM ranked_load
WHERE srcip IS NOT NULL AND dstip IS NOT NULL
ORDER BY sload DESC
LIMIT 10;