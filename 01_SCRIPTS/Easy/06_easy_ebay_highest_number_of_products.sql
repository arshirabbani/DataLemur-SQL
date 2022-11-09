-- highest number of products --

SELECT 
  user_id, 
  count(product_id) as prod_num 
FROM 
  user_transactions 
GROUP BY 
  user_id 
HAVING 
  sum(spend) >= 1000 
ORDER BY
  prod_num desc, 
  sum(spend) desc 
limit 
  3;
