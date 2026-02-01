SELECT commodity, price, currency, market, admin1, date
FROM food_prices
ORDER BY price DESC
LIMIT 1;

SELECT commodity, price, currency, unit, admin1, date
FROM food_prices
WHERE category != 'non-food'
ORDER BY price DESC
LIMIT 1;

SELECT date, admin1, commodity, price, unit
FROM food_prices
WHERE category != 'non-food'
ORDER BY price DESC
LIMIT 5;

SELECT category, commodity, MAX(price) as max_price, unit, admin1
FROM food_prices
GROUP BY category;