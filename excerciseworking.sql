/* ========== Chapter 1 ========== */

-- Basic Queries
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

/*SELECT *
  FROM people
  RIGHT JOIN states ON people.state_code = states.state_abbrev;*/

/*SELECT DISTINCT(people.state_code), states.state_abbrev
  FROM states
  LEFT JOIN people ON people.state_code = states.state_abbrev
  ORDER BY people.state_code;*/

/*SELECT first_name, COUNT(first_name)
  FROM people
  GROUP BY first_name;*/

/*SELECT state_code, quiz_points, COUNT(quiz_points)
  FROM people
  GROUP BY state_code, quiz_points;*/

/*SELECT states.region, people.team, COUNT(people.team)
  FROM states
  JOIN people ON people.state_code = states.state_abbrev
  GROUP BY states.region, people.team;*/

/* ========== Chapter 3 ========== */

-- Arithmetics
  /*SELECT 4 + 2;
  SELECT 1 / 3.0;
  SELECT 3 < 2;*/

/*SELECT first_name, quiz_points
  FROM people
  WHERE quiz_points >= 70
  ORDER BY quiz_points;*/

--SELECT MAX(quiz_points), MIN(quiz_points) FROM people;

--SELECT SUM(quiz_points) FROM people;

/*SELECT team, COUNT(*), SUM(quiz_points), AVG(quiz_points) --SUM(quiz_points)/COUNT(*)
  FROM people
  GROUP BY team;*/

/*SELECT first_name, last_name, quiz_points
  FROM people
  WHERE quiz_points = (SELECT MAX(quiz_points) FROM people);*/

/*SELECT *
  FROM people
  WHERE state_code = (
    SELECT state_abbrev FROM states WHERE state_name = 'Minnesota'
    );*/

/*SELECT LOWER(first_name), UPPER(last_name)
  FROM people;*/

/*SELECT first_name, SUBSTR(last_name, 1, 5)
  FROM people;*/

/*SELECT first_name, SUBSTR(last_name, 2)
  FROM people;*/

/*SELECT first_name, SUBSTR(last_name, -3)
  FROM people;*/

/*SELECT REPLACE(first_name, "a", "-")
  FROM people;*/

/*SELECT quiz_points
  FROM people
  ORDER BY CAST(quiz_points AS CHAR)*/

/*SELECT MAX(CAST(quiz_points AS CHAR))
  FROM people;*/

/*SELECT first_name AS firstname, UPPER(last_name) AS surname
  from people
  WHERE firstname = 'Laura';*/

-- Practice question for this chapter:
/*SELECT states.state_name AS state, MAX(people.quiz_points) AS maxpoints, AVG(people.quiz_points) AS avgpoints
  FROM people
  JOIN states ON people.state_code = states.state_abbrev
  GROUP BY state
  ORDER BY avgpoints DESC;*/