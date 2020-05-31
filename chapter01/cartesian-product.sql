-- R relation
-- × (Cartesian product) CROSS JOIN


-- R1 × R2
-- customer × customer_service
SELECT
  *
FROM
  customer
CROSS JOIN
  customer_service;
