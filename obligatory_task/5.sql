SELECT
  ISNULL(SUM(out), 0) AS qty, dt1, dt2
FROM (
  SELECT date AS dt1, lead(date) over (order by date) as dt2
  FROM (
   SELECT DISTINCT date
   FROM income_o
  ) dd
) d
OUTER APPLY (
  SELECT out
  FROM outcome_o
  WHERE dt1 < date AND date <= dt2
) o
GROUP BY dt1, dt2
HAVING dt2 is not null