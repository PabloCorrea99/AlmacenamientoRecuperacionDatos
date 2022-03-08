SELECT * FROM trusted limit 5;

SELECT count(*) FROM trusted;

SELECT * FROM trusted WHERE city = 'New York';

SELECT count(*) FROM trusted WHERE country = 'United States' AND averagetemperature > 23;

SELECT * FROM trusted WHERE dt LIKE '2010%' limit 5;