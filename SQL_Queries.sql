CREATE TABLE supply_chain_data (
price_per_unit NUMERIC,
quality_score NUMERIC,
delivery_time_days INT,
on_time_delivery_rate NUMERIC,
defect_rate NUMERIC,
return_rate NUMERIC,
delivery_mode TEXT,
lead_time_variance NUMERIC,
forecast_accuracy NUMERIC,
seasonality_index NUMERIC,
demand_volatility_index NUMERIC,
order_frequency_monthly INT,
avg_order_volume NUMERIC,
payment_term_days INT,
offer_validity_days INT,
procurement_action_code INT,
delivery_term_code INT,
items_requested INT,
items_offered INT,
temporal_month INT,
supplier_reliability_score NUMERIC,
selected_supplier_flag INT
);

SELECT COUNT(*)
FROM supply_chain_data;

SELECT
delivery_mode,
ROUND(AVG(delivery_time_days), 2) AS avg_delivery_days
FROM supply_chain_data
GROUP BY delivery_mode
ORDER BY avg_delivery_days;

SELECT
delivery_mode,
ROUND(AVG(defect_rate) * 100, 2) AS avg_defect_percent
FROM supply_chain_data
GROUP BY delivery_mode
ORDER BY avg_defect_percent DESC;

SELECT
delivery_mode,
ROUND(AVG(supplier_reliability_score), 2) AS avg_supplier_reliability
FROM supply_chain_data
GROUP BY delivery_mode
ORDER BY avg_supplier_reliability DESC;

SELECT
delivery_mode,
ROUND(AVG(price_per_unit), 2) AS avg_price_per_unit
FROM supply_chain_data
GROUP BY delivery_mode
ORDER BY avg_price_per_unit DESC;