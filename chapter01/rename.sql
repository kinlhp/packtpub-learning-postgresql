-- R relation
-- a attribute, and also nested alias
-- b alias
-- c attribute
-- d alias
-- π (pi) PROJECT
-- ρ (rho) RENAME


-- π ρ a/b
-- π ρ 3.14::REAL/PI
SELECT
  3.14::REAL AS PI;


-- π ρ a/b R
-- π ρ first_name/short_name customer
SELECT
  first_name AS short_name
FROM
  customer;


-- π ρ a/b ρ (π ρ c/a R)/d
-- π ρ first_name/short_name ρ (π ρ last_name/first_name customer)/renamed_relation
SELECT
  first_name AS short_name
FROM
  (SELECT last_name AS first_name FROM customer) AS renamed_relation;
