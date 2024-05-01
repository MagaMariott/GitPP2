CREATE OR REPLACE PROCEDURE insert_or_update_user(name_val VARCHAR, phone_val VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO PhoneBook (name, phone_number) VALUES (name_val, phone_val)
    ON CONFLICT (name) DO UPDATE SET phone_number = phone_val;
END;
$$;
