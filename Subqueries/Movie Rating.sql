-- Q. https://leetcode.com/problems/movie-rating/

select name as "results" from (select name, count(movierating.user_id) from movierating, users where movierating.user_id = users.user_id
group by name
order by count(movierating.user_id) desc, name asc
limit 1) pqr

union all

select title from (select title, avg(rating) from movierating, movies where movierating.movie_id = movies.movie_id and created_at like '2020-02%'
group by movierating.movie_id
order by avg(rating) desc, title asc
limit 1) abcd;

