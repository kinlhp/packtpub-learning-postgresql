SELECT
  row('11', '111111')::phone_number = row('11', '111111')::phone_number AS is_equal,
  row('11', '111111')::phone_number = row('11', '111112')::phone_number AS is_equal;
