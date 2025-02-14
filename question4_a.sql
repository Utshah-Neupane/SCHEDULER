
ALTER TABLE BOOK ADD COLUMN AUTHOR_NAME VARCHAR(50);

CREATE TRIGGER IF NOT EXISTS INSERT_AUTHOR
	AFTER INSERT ON BOOK
BEGIN
	INSERT INTO BOOK_AUTHORS(BOOK_ID, AUTHOR_NAME)
	VALUES (NEW.BOOK_ID, NEW.AUTHOR_NAME);
END; 



INSERT INTO BOOK(TITLE, PUBLISHER_NAME, AUTHOR_NAME)
VALUES('Harry Potter and the Sorcerer''s Stone', 'Oxford Publisheing', 'J.K. Rowling');


CREATE TABLE BOOK_NO_AUTHOR AS
SELECT BOOK_ID, TITLE, PUBLISHER_NAME
FROM BOOK;

DROP TABLE BOOK;
ALTER TABLE BOOK_NO_AUTHOR RENAME TO BOOK;


--ALTER TABLE BOOK DROP COLUMN AUTHOR_NAME; --Not Supported in SQLite

