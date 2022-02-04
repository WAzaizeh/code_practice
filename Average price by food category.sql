"""
Suppose you're given data showing information on a restaurant chain's food/beverage inventory as well as the price of each item
(as shown in the bottom of the question). Using this table, write a SQL query that adds two columns: one showing the average item
price across each category (e.g. beverage, food), and one that ranks each item from 1 to n (with one being the most expensive)
within their category.

Table: stock_prices
category	item	price
beverage	soda	$1.50
beverage	milkshake	$3.50
beverage	tea	$1.50
beverage	coffee	$2.00
beverage	water	$1.00
food	sandwich	$3.00
food	burger	$2.00
food	fries	$1.00
food	pizza	$2.50
food	apple	$1.00
"""

CREATE TABLE food_items (
  `category` VARCHAR(8),
  `item` VARCHAR(9),
  `price` INT
);

INSERT INTO food_items
  (`category`, `item`, `price`)
VALUES
  ('beverage', 'soda', '1.50'),
  ('beverage', 'milkshake', '3.50'),
  ('beverage', 'tea', '1.50'),
  ('beverage', 'coffee', '2.00'),
  ('beverage', 'water', '1.00'),
  ('food', 'sandwich', '3.00'),
  ('food', 'burger', '2.00'),
  ('food', 'fries', '1.50'),
  ('food', 'pizza', '2.50'),
  ('food', 'apple', '2.00');

SELECT sAVG(price) AS average, ROW_NUMBER() OVER (ORDER BY AVG(price) DESC) AS item_rank
FROM food_items
GROUP BY category, item
