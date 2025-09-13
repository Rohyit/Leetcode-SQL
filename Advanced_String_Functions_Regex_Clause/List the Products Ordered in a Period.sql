-- Q. https://leetcode.com/problems/list-the-products-ordered-in-a-period/

select product_name, sum(unit) as "unit" from orders, products 
where orders.product_id = products.product_id and order_date like '2020-02%'
group by product_name
having unit >= 100;