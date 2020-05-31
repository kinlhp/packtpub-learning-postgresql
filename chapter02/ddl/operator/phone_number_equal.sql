CREATE OPERATOR = (
  LEFTARG = phone_number,
  RIGHTARG = phone_number,
  PROCEDURE = phone_number_equal
);
