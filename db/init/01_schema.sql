
CREATE TABLE IF NOT EXISTS orders (
  order_id TEXT PRIMARY KEY,
  order_date DATE,
  customer_id TEXT,
  customer_segment TEXT,
  region TEXT,
  state TEXT,
  city TEXT,
  product_category TEXT,
  product_name TEXT,
  channel TEXT,
  quantity INT,
  unit_price NUMERIC,
  discount_pct NUMERIC,
  tax_pct NUMERIC,
  shipping_cost NUMERIC,
  status TEXT
);
