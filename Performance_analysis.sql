CREATE OR REPLACE TABLE `kimia-farma-489603.Performance_Analytics.performance_analysis` AS
SELECT
    t.transaction_id,
    t.date,
    t.branch_id,
    c.branch_name,
    c.kota,
    c.provinsi,
    c.rating AS rating_cabang,
    t.customer_name,
    t.product_id,
    p.product_name,
    p.price AS actual_price,
    t.discount_percentage,
    -- Menghitung persentase laba berdasarkan harga
    CASE
        WHEN p.price <= 50000 THEN 0.10
        WHEN p.price > 50000 AND p.price <= 100000 THEN 0.15
        WHEN p.price > 100000 AND p.price <= 300000 THEN 0.20
        WHEN p.price > 300000 AND p.price <= 500000 THEN 0.25
        ELSE 0.30
    END AS persentase_gross_laba,
    -- Menghitung harga setelah diskon (Nett Sales)
    (p.price * (1 - t.discount_percentage)) AS nett_sales,
    -- Menghitung keuntungan bersih (Nett Profit)
    ((p.price * (1 - t.discount_percentage)) * CASE
            WHEN p.price <= 50000 THEN 0.10
            WHEN p.price > 50000 AND p.price <= 100000 THEN 0.15
            WHEN p.price > 100000 AND p.price <= 300000 THEN 0.20
            WHEN p.price > 300000 AND p.price <= 500000 THEN 0.25
            ELSE 0.30
        END
    ) AS nett_profit,
    t.rating AS rating_transaksi
FROM
    `kimia-farma-489603.Performance_Analytics.kf_final_transaction` AS t
LEFT JOIN
    `kimia-farma-489603.Performance_Analytics.kf_kantor_cabang` AS c
    ON t.branch_id = c.branch_id
LEFT JOIN
    `kimia-farma-489603.Performance_Analytics.kf_product` AS p
    ON t.product_id = p.product_id
ORDER BY t.date;