# Sales & Revenue Performance Analytics

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
