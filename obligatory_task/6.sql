WITH 
t1 AS (
SELECT row_number() OVER (ORDER BY date) AS num,name,date,
ntile(2) over (order by date) as gr
FROM battles), 
t2 AS (
SELECT *, row_number() OVER (PARTITION BY gr ORDER BY date) AS gr_rn
FROM t1
)

SELECT
MAX(iif(gr = 1, num, null)) as rn_1,
MAX(iif(gr = 1, name, null)) as name_1,
MAX(iif(gr = 1, date, null)) as date_1,
MAX(iif(gr = 2, num, null)) as rn_2,
MAX(iif(gr = 2, name, null)) as name_2,
MAX(iif(gr = 2, date, null)) as date_2
FROM t2
GROUP BY gr_rn