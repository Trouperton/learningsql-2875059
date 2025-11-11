/* ========== Chapter 1 ========== */

--SELECT * FROM people;
--SELECT 'Hello, World!';
--SELECT first_name FROM people;
--SELECT last_name FROM people;
--SELECT first_name, last_name FROM people;

--SELECT * FROM people WHERE state_code = 'CA';
--SELECT * FROM people WHERE shirt_or_hat = 'shirt';

--SELECT first_name, last_name FROM people
--  WHERE shirt_or_hat = 'shirt';

--SELECT first_name, last_name FROM people
--  WHERE (state_code = 'CA' OR state_code = 'CO') AND shirt_or_hat = 'shirt' AND team is not 'Angry Ants';

--SELECT * FROM people
--  WHERE state_code like 'C%';

--SELECT * FROM people
--  WHERE first_name like '%ON%';

--SELECT * FROM people
--  WHERE first_name like 'b%n';

--SELECT * FROM people
--  WHERE company like '%llc'
--  LIMIT 5;

--SELECT * FROM people
--  WHERE company like '%llc'
--  LIMIT 5 OFFSET 5;

--SELECT first_name, last_name FROM people
--  ORDER BY first_name;

--SELECT first_name, last_name FROM people
--  ORDER BY last_name DESC;

--SELECT state_code, last_name, first_name FROM people
--  ORDER BY state_code, last_name;

--SELECT first_name, LENGTH(first_name) FROM people;

--SELECT DISTINCT(first_name) FROM people
--  ORDER BY first_name;

--SELECT COUNT(*) FROM people
--  WHERE state_code = 'CA';

--SELECT * FROM people
--  WHERE state_code = 'CO'
--  ORDER BY team, shirt_or_hat, last_name DESC;

/* ========== Chapter 2 ========== */

/*SELECT people.first_name, people.state_code, states.division
  FROM people
  JOIN states ON people.state_code = states.state_abbrev;*/

/*SELECT *
  FROM people
  JOIN states ON people.state_code = states.state_abbrev
  WHERE people.first_name LIKE 'J%' AND states.region = 'South';*/

/*SELECT ppl.first_name, st.state_name
  FROM people ppl, states st
  WHERE ppl.state_code = st.state_abbrev;*/

SELECT *
  FROM people
  RIGHT JOIN states ON people.state_code = states.state_abbrev;