-- R relation
-- a attribute
-- π (pi) PROJECT


-- π a1 (π a1, a2 R)
-- π first_name (π first_name, π last_name customer)
SELECT DISTINCT
  first_name
FROM
  (SELECT DISTINCT first_name, last_name FROM customer) AS projected_relation;


-- π a1 (π a1, a2 R) [performed as: π a R]
-- π first_name (π first_name, π last_name customer) [performed as: π first_name customer]
SELECT DISTINCT
  first_name
FROM
  customer;
