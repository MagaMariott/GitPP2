CREATE OR REPLACE PROCEDURE delete_data_by_username_or_phone(
    search_value VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM PhoneBook WHERE name = search_value OR phone_number = search_value;
END;
$$;
