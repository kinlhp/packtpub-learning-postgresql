-- DROP TYPE phone_number;

CREATE TYPE phone_number AS (
  area_code varchar(3),
  line_number varchar(7)
);
