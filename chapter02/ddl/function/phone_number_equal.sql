CREATE OR REPLACE FUNCTION public.phone_number_equal(phone_number, phone_number) RETURNS boolean AS
$function$
BEGIN
  RETURN (($1.area_code = $2.area_code) AND ($1.line_number = $2.line_number))
END;
$function$
LANGUAGE plpgsql;
