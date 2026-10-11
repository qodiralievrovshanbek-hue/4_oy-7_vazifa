SELECT * FROM authors;

SELECT * FROM books;

SELECT title, price, pages FROM books;

SELECT full_name, country FROM authors;

SELECT title, price AS book_price, pages AS book_pages FROM books;

SELECT full_name AS author_name, country AS author_country FROM authors;

SELECT * FROM books WHERE price > 50000;

SELECT * FROM books WHERE price < 40000;

SELECT * FROM books WHERE price = 50000;

SELECT * FROM books WHERE price <> 50000;

SELECT * FROM books WHERE pages > 300;

SELECT * FROM books WHERE published_year < 1900;

SELECT * FROM books WHERE price > 40000 AND pages > 300;

SELECT * FROM books WHERE price < 30000 OR price > 60000;

SELECT * FROM authors WHERE country = 'England' OR country = 'USA';

SELECT * FROM books ORDER BY price ASC;

SELECT * FROM books ORDER BY price DESC;

SELECT * FROM books ORDER BY pages DESC;

SELECT * FROM authors ORDER BY age ASC;

SELECT * FROM books ORDER BY price DESC LIMIT 5;

SELECT * FROM books ORDER BY price ASC LIMIT 5;

SELECT * FROM books ORDER BY price DESC LIMIT 5 OFFSET 5;

SELECT * FROM authors ORDER BY age DESC LIMIT 3;

SELECT * FROM books ORDER BY price DESC FETCH FIRST 3 ROWS ONLY;

SELECT * FROM books ORDER BY price ASC FETCH FIRST 5 ROWS ONLY;

SELECT * FROM books WHERE price IN (35000, 45000, 55000);

SELECT * FROM authors WHERE country IN ('Uzbekistan', 'USA', 'France');

SELECT * FROM books WHERE price BETWEEN 40000 AND 55000;

SELECT * FROM books WHERE pages BETWEEN 250 AND 400;

SELECT * FROM books WHERE published_year BETWEEN 1900 AND 1950;

SELECT * FROM books WHERE title LIKE 'The%';

SELECT * FROM books WHERE title NOT LIKE 'The%' AND title LIKE '%the%';

SELECT * FROM authors WHERE full_name LIKE '%ov%';

SELECT * FROM books WHERE title LIKE '%World%';

SELECT * FROM authors WHERE country IS NULL;

SELECT * FROM authors WHERE country IS NOT NULL;

SELECT SUM(price) AS total_price FROM books;

SELECT AVG(price) AS avg_price FROM books;

SELECT MAX(price) AS max_price FROM books;

SELECT MIN(price) AS min_price FROM books;

SELECT COUNT(*) AS book_count FROM books;

SELECT AVG(pages) AS avg_pages FROM books;

SELECT title, LENGTH(title) AS title_length FROM books;

SELECT * FROM books WHERE LENGTH(title) > 20;

SELECT * FROM authors WHERE LENGTH(full_name) > 15;

SELECT author_id, COUNT(*) AS book_count FROM books GROUP BY author_id;

SELECT author_id, AVG(price) AS avg_price FROM books GROUP BY author_id;

SELECT author_id, MAX(price) AS max_price FROM books GROUP BY author_id;

SELECT author_id, MIN(price) AS min_price FROM books GROUP BY author_id;

SELECT author_id, SUM(price) AS total_price FROM books GROUP BY author_id;

SELECT author_id FROM books GROUP BY author_id HAVING COUNT(*) > 2;

SELECT author_id FROM books GROUP BY author_id HAVING AVG(price) > 45000;

SELECT author_id FROM books GROUP BY author_id HAVING SUM(price) > 100000;

SELECT author_id FROM books GROUP BY author_id HAVING AVG(pages) > 300;

SELECT title, price, pages
FROM books
WHERE price BETWEEN 40000 AND 55000
ORDER BY price DESC
LIMIT 5;

SELECT *
FROM books
WHERE title LIKE '%The%' AND price > 40000
ORDER BY price DESC;

SELECT author_id,
       COUNT(*)   AS book_count,
       AVG(price) AS avg_price,
       MAX(price) AS max_price,
       MIN(price) AS min_price
FROM books
GROUP BY author_id
HAVING COUNT(*) > 2;

SELECT author_id, COUNT(*) AS book_count
FROM books
GROUP BY author_id
HAVING COUNT(*) >= 3
ORDER BY book_count DESC
LIMIT 3;