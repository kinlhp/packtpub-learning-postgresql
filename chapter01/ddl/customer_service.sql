-- public.customer_service definition

-- Drop table

-- DROP TABLE public.customer_service;

CREATE TABLE public.customer_service (
  customer_id int4 NOT NULL,
  service_id int4 NOT NULL,
  end_date timestamp NULL,
  start_date timestamp NOT NULL DEFAULT now(),
  CONSTRAINT customer_service_pk PRIMARY KEY (customer_id, service_id)
);


-- public.customer_service foreign keys

ALTER TABLE public.customer_service ADD CONSTRAINT customer_service_fk_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id);
ALTER TABLE public.customer_service ADD CONSTRAINT customer_service_fk_service FOREIGN KEY (service_id) REFERENCES service(service_id);
