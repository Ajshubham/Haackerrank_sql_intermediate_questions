SELECT sku, product_name
FROM product
WHERE id NOT IN (select p.id from product p inner join invoice_item i on p.id = i.product_id)
ORDER BY sku;
