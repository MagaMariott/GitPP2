CREATE OR REPLACE FUNCTION get_data_with_pagination(
    limit_val INT,
    offset_val INT
)
RETURNS TABLE (*) AS $$
BEGIN
    RETURN QUERY SELECT * FROM PhoneBook LIMIT limit_val OFFSET offset_val;
END;
$$ LANGUAGE plpgsql;
