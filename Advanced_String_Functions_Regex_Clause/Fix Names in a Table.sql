-- Q. https://leetcode.com/problems/fix-names-in-a-table/description/

select user_id, concat(upper(substring(name, 1, 1)), lower(substring(name, 2))) as "name" from users
order by user_id;