-- public.customer definition

-- Drop table

-- DROP TABLE public.customer;

CREATE TABLE public.customer (
  customer_id serial NOT NULL,
  email varchar(64) NULL,
  first_name varchar(32) NOT NULL,
  last_name varchar(64) NOT NULL,
  phone varchar(16) NULL,
  CONSTRAINT customer_pk PRIMARY KEY (customer_id)
);
