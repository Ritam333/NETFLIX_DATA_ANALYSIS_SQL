-- PROBLEMS

-- Question 1.
-- count the number of movies and tv shows

select type,count(type) as "numbers"
from netflix
group by type

-------------------- ******** ---------------------------------
-------------------- ******** ---------------------------------

-- Question 2.
-- find the most common rating for movies and tv shows

select type,rating,count(*)
from netflix
group by 1,2
order by 1,3 desc

----------------------- ******** ---------------------------------
----------------------- ******** ---------------------------------


-- Question 3.
-- list all the movies released in a specific year(2020)

select title,release_year
from netflix
where type='Movie' and release_year=2020

-------------- ****** -----------------------------------------------
-------------- ****** -----------------------------------------------

-- Question 4.
-- find the top 5 countries with the most content on netflix 

select UNNEST(STRING_TO_ARRAY(country,',')) as "new_country",
count(Show_id)
from netflix 
group by 1
order by 2 desc
limit 5

----------------- ******* ----------------------------------------
----------------- ******* ----------------------------------------


-- Question 5.
-- identify the longest movie

select title,duration
from netflix
where type= 'Movie'
and duration =(select max(duration) from netflix)
order by 2 desc

-------------- ********* ----------------------------------
-------------- ********* ----------------------------------


-- Question 6.
-- find the content add in the last 5 years

select type,title,
to_date(date_added,'month dd , yyyy') as "date"
from netflix
where to_date(date_added,'month dd , yyyy') >= current_date - interval '5 year'


----------- ******** ---------------------------------------------------------------
----------- ******** ---------------------------------------------------------------



-- Question 7.
-- find all the movies/tv show by director 'Rajiv Chilaka'

select type,title
from netflix 
where director ='Rajiv Chilaka'
-- where director LIKE '%Rajiv Chilaka%' ILIKE

------------------ ******** --------------------------------------
------------------ ******** --------------------------------------



-- Questoion 8.
-- list all tv shows with more than 5 season

select title,duration
from netflix
where type ='TV Show'
and split_part(duration,' ',1)::numeric>5

---------------- ******** -------------------------------------
---------------- ******** -------------------------------------


-- Question 9.
-- count the number of content in each gener 

select 
UNNEST(STRING_TO_ARRAY(listed_in,',')) as "gener",
count(show_id) as "total_content"
from netflix
group by 1

--------------------- ******** -----------------------------
--------------------- ********* ----------------------------



-- Question 10.
-- find each year and  numbers of content release by india on netflix
-- return top 5 year with the content release percentage

select 
extract(year from to_date(date_added,'Month DD,YYYY')) as "year",
count(show_id) as "yearly" ,
round(count(show_id)::numeric/(select count(show_id) from netflix where country='India' )::numeric *100 
	  ,2)as "avg"
from netflix
where country='India'
group by 1


--------------------- ******* ---------------------------------
--------------------- ******  ---------------------------------

-- Question 11.
-- list all the movies that are documentaries

select title
from netflix 
where listed_in='Documentaries'


------------------- ******* -------------------
------------------- ******* -------------------


-- Question 12.
-- find all the content without a director


select title
from netflix 
where director is null


------------------- ****** ----------------------------
------------------- ****** ----------------------------


-- Question 12.
-- find in how many movies actor 'Shah Rukh Khan' appear in last 10 years

select  title,release_year
from netflix 
where type ='Movie' and casts ILIKE '%Shah Rukh Khan%'
and release_year > extract(year from current_date)-10


--------------------- ******** --------------------------------------
--------------------- ******** --------------------------------------

-- Question 14.
-- find the top 10 actors who have appeared in the highest number of movies peoduced in india 

select
UNNEST(STRING_TO_ARRAY(casts,',')) as "actor",
count(show_id)
from netflix
where country ILIKE '%india%'
group by 1
order by 2 desc
limit 10

--------------------- ****** --------------------------------
--------------------- ****** --------------------------------


-- Question 15.
-- categorize the content based onn the presence of the keywords 'kill' and 'violence' in the description field
-- label content containing these keyword 'bad' and all other content as 'good' 
-- count how many content fall in each category


select title,
case
when description ilike '%kill%' or description ilike '%violence%' then 'BAD_CONTENT'  
else 'GOOD_CONTENT'
end as "category"
from netflix
-- 
