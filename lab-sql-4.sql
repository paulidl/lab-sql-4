use sakila;
-- 1. Get film ratings.

select distinct rating from sakila.film; -- PG, G, NC-17, PG-13, R.

-- 2. Get release years.

select distinct release_year from sakila.film;		-- 2006

-- 3. Get all films with ARMAGEDDON in the title.

select * from sakila.film where title regexp "ARMAGEDDON";	-- ARMAGEDDON LOST, LADYBUGS ARMAGEDDON, METAL ARMAGEDDON, MOSQUITO ARMAGEDDON, STAGECOACH ARMAGEDDON, STEERS ARMAGEDDON.

-- 4. Get all films with APOLLO in the title.

select * from sakila.film where title regexp "APOLLO";	-- APOLLO TEEN, SALUTE APOLLO, SCORPION APOLLO, TEEN APOLLO, WEDDING APOLLO, WILD APOLLO.

-- 5. Get all films which title ends with APOLLO.

select * from sakila.film where title regexp "APOLLO$"; 	-- SALUTE APOLLO, SCORPION APOLLO, TEEN APOLLO, WEDDING APOLLO, WILD APOLLO.

-- 6. Get all films with word DATE in the title.

select * from sakila.film where title regexp "DATE";	-- CANDIDATE PERDITION, CAUSE DATE, DATE SPEED, FOREVER CANDIDATE, GUMP DATE, SPEAKEASY DATE, TROUBLE DATE.

-- 7. Get 10 films with the longest title.

select title, length(title) from sakila.film order by length(title) desc limit 10;

-- 8. Get 10 the longest films.

select title, length from sakila.film order by length desc limit 10;

-- 9. How many films include Behind the Scenes content?

select count(*) from sakila.film where special_features regexp "Behind the Scenes";	-- 538

-- 10. List films ordered by release year and title in alphabetical order.

select release_year, title from sakila.film order by title asc;

