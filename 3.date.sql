-- Setting up timezones
ALTER USER postgres SET timezone='UTC';

-- Select current date
SELECT NOW()::date;
SELECT CURRENT_DATE;
/* 1800-01-01 */

-- Format current date
SELECT TO_CHAR(CURRENT_DATE, 'dd/mm/yyyy'); /* 01/01/1800 */ 

-- Calculate age till now
SELECT AGE(date '1800/01/01');

-- Calculate age between
SELECT AGE(date '1992/11/13', date '1800/01/01');

-- Extract day
SELECT EXTRACT (DAY FROM date '1992/11/13') AS DAY;

-- Round a date
SELECT DATE_TRUNC('year', date '1992/11/13');

-- Iterval
SELECT * FROM orders WHERE purchaseDate <= now() - interval '30 days';