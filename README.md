# Sales & Revenue Performance Analytics


A Data Analyst project that simulates how companies analyze revenue,
orders, customers, and regional performance.

## Tech Stack
- Python (Pandas, NumPy)
- PostgreSQL (Docker)
- SQL (Views, KPIs)
- Streamlit + Plotly
- GitHub-ready ETL pipeline

## Project Flow
1. Generate realistic raw sales data
2. Clean and validate data
3. Load data into PostgreSQL
4. Create analytics SQL views
5. Build interactive dashboard

## Quick Start

```bash
cp .env.example .env
docker compose up -d
pip install -r requirements.txt
python src/generate_data.py
python src/etl_clean.py
python src/load_to_postgres.py
streamlit run app/streamlit_app.py

'''
sales-revenue-analytics/
├─ README.md
├─ docker-compose.yml
├─ .env.example
├─ requirements.txt
├─ Makefile
├─ data/
│  ├─ raw/
│  │  └─ orders_raw.csv              # generated sample raw data
│  └─ processed/
│     └─ orders_clean.csv
├─ db/
│  ├─ init/
│  │  ├─ 01_schema.sql               # creates tables
│  │  └─ 02_views.sql                # analytics views
│  └─ seeds/
│     └─ seed_from_csv.sql           # optional helper
├─ src/
│  ├─ generate_data.py               # generate realistic raw dataset
│  ├─ etl_clean.py                   # clean + validate data
│  ├─ load_to_postgres.py            # load cleaned data to Postgres
│  └─ kpi_queries.py                 # reusable KPI SQL
├─ app/
│  ├─ streamlit_app.py               # dashboard app
│  └─ utils.py                       # db helper
└─ tests/
   └─ test_quality.py                # data quality checks
'''
