USE alx_book_store;
SELECT 
    TABLE_NAME, 
    COLUMN_NAME, 
    COLUMN_TYPE, 
    IS_NULLABLE, 
    COLUMN_DEFAULT, 
    EXTRA 
FROM 
    information_schema.columns 
WHERE 
    TABLE_SCHEMA = 'alx_book_store' AND 
    TABLE_NAME = 'books';
