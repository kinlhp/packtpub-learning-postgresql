-- public.service definition

-- Drop table

-- DROP TABLE public.service;

CREATE TABLE public.service (
  service_id serial NOT NULL,
  fee_per_month numeric(5,2) NOT NULL,
  description varchar(64) NULL,
  name varchar(32) NOT NULL,
  CONSTRAINT service_pk PRIMARY KEY (service_id),
  CONSTRAINT service_unique UNIQUE (name)
);
