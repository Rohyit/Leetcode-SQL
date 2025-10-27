-- Q. https://leetcode.com/problems/biggest-single-number/

select max(num) as "num" 
from (select num from mynumbers 
group by num
having count(num) = 1) as abcd;
