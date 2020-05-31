-- R relation
-- a attribute
-- π (pi) PROJECT
-- − (minus sign) EXCEPT
-- ∩ (intersection) INTERSECT
-- ∪ (union) UNION


-- ((π a R1 ∪ π a R2) − (π a R1 − π a R2)) − (π a R2 − π a R1)
-- ((π customer_id customer ∪ π customer_id customer_service) − (π customer_id customer − π customer_id customer_service)) − (π customer_id customer_service − π customer_id customer)
SELECT
  customer_id
FROM
  customer 
UNION
  (SELECT customer_id FROM customer_service)
EXCEPT
  (SELECT customer_id FROM customer EXCEPT SELECT customer_id FROM customer_service)
EXCEPT
  (SELECT customer_id FROM customer_service EXCEPT SELECT customer_id FROM customer);

-- ((π customer_id customer_service ∪ π customer_id customer) − (π customer_id customer_service − π customer_id customer)) − (π customer_id customer − π customer_id customer_service)
SELECT
  customer_id
FROM
  customer_service cs 
UNION
  (SELECT customer_id FROM customer)
EXCEPT
  (SELECT customer_id FROM customer_service EXCEPT SELECT customer_id FROM customer)
EXCEPT
  (SELECT customer_id FROM customer EXCEPT SELECT customer_id FROM customer_service);


-- ((π a R1 ∪ π a R2) − (π a R1 − π a R2)) − (π a R2 − π a R1) [performed as: π a R1 ∩ π a R2]
-- ((π customer_id customer ∪ π customer_id customer_service) − (π customer_id customer − π customer_id customer_service)) − (π customer_id customer_service − π customer_id customer) [performed as: π customer_id customer ∩ π customer_id customer_service]
SELECT
  customer_id
FROM
  customer
INTERSECT
  (SELECT customer_id FROM customer_service);

-- ((π customer_id customer_service ∪ π customer_id customer) − (π customer_id customer_service − π customer_id customer)) − (π customer_id customer − π customer_id customer_service) [performed as: π customer_id customer_service ∩ π customer_id customer]
SELECT
  customer_id
FROM
  customer_service
INTERSECT
  (SELECT customer_id FROM customer);
