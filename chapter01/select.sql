-- R relation
-- σ (sigma) SELECT
-- φ (phi) predicate

-- σ φ R
-- σ customer_id=2 customer
SELECT
  *
FROM
  customer
WHERE
  customer_id = 2;


-- σ φ (σ φ R)
-- σ email is not null (σ first_name=foo customer)
SELECT
  *
FROM
  (SELECT * FROM customer WHERE email IS NOT NULL) AS filtered_relation
WHERE
  first_name = 'foo';


-- σ φ (σ φ R)
-- σ first_name=foo (σ email is not null customer)
SELECT
  *
FROM
  (SELECT * FROM customer WHERE first_name = 'foo') AS filtered_relation
WHERE
  email IS NOT NULL;


-- σ φ AND φ R
-- σ email is not null AND first_name=foo customer
SELECT
  *
FROM
  customer
WHERE
  email IS NOT NULL
  AND first_name = 'foo';


-- σ φ AND φ R
-- σ first_name=foo AND email is not null customer
SELECT
  *
FROM
  customer
WHERE
  first_name = 'foo'
  AND email IS NOT NULL;
