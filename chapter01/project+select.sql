-- R relation
-- a attribute
-- π (pi) PROJECT
-- σ (sigma) SELECT
-- φ (phi) predicate


-- σ φ (π a1, π a2, π a3 R)
-- σ email is not null (π first_name, π last_name, π email customer)
SELECT
  *
FROM
  (SELECT DISTINCT first_name, last_name, email FROM customer) AS filtered_relation
WHERE
  email IS NOT NULL;


-- π a1, π a2 (σ φ R)
-- π first_name, π last_name (σ email is not null customer)
SELECT DISTINCT
  first_name, last_name
FROM
  (SELECT * FROM customer WHERE email IS NOT NULL) AS filtered_relation;
