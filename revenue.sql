
SELECT carat_range, AVG(price) AS avg_price
FROM (SELECT
          CASE
                 WHEN carat < 1.8 THEN 'Low Range'
                 WHEN carat >= 1.8 AND carat < 3.4 THEN 'Mid Range'
                 ELSE 'High Range'
                 END AS carat_range,
             price
      FROM diamonds)t
GROUP BY carat_range;

SELECT cut, AVG(price) from diamonds group by cut;
SELECT color, AVG(price) from diamonds group by color;

SELECT clarity , AVG(price) from diamonds group by clarity;
SELECT depth, AVG(price) from diamonds group by depth;
SELECT table_pct, AVG(price) from diamonds group by table_pct;


SELECT
    x, y, z,
    x*y*z AS volume
FROM diamonds;




