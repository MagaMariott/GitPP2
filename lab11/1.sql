CREATE OR REPLACE FUNCTION search_records(pattern VARCHAR)
RETURNS TABLE (*) AS $$
BEGIN
    RETURN QUERY SELECT * FROM PhoneBook WHERE name ILIKE '%' || pattern || '%' OR surname ILIKE '%' || pattern || '%' OR phone_number ILIKE '%' || pattern || '%';
END;
$$ LANGUAGE plpgsql;
