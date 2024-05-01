CREATE OR REPLACE PROCEDURE insert_many_users(
    in_names VARCHAR[],
    in_phone_numbers VARCHAR[],
    OUT incorrect_data VARCHAR[]
)
LANGUAGE plpgsql
AS $$
DECLARE
    i INT;
BEGIN
    incorrect_data := ARRAY[]::VARCHAR[];
    
    IF array_length(in_names, 1) <> array_length(in_phone_numbers, 1) THEN
        incorrect_data := ARRAY['Number of names does not match number of phone numbers'];
        RETURN;
    END IF;

    FOR i IN 1..array_length(in_names, 1) LOOP
        IF LENGTH(in_phone_numbers[i]) <> 11 OR in_phone_numbers[i] ~ '\D' THEN
            incorrect_data := array_append(incorrect_data, in_phone_numbers[i] || ' for user ' || in_names[i]);
        ELSE
            INSERT INTO PhoneBook (name, phone_number) VALUES (in_names[i], in_phone_numbers[i]);
        END IF;
    END LOOP;
END;
$$;
