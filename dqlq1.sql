SELECT rental_id, cust_id, laptop_id, amount
FROM zeerentals
Where pick_date = “MAY 2020” and amount > 7000
Order by rental_id
