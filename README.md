# Snowflake ELT Pipeline with dbt

## Overview
This project demonstrates a modern ELT pipeline using:

- Python (data generation)
- AWS S3 (raw storage)
- Snowflake (data warehouse)
- dbt (transformations & incremental models)

## Architecture

Raw Layer:
- DBT_ELT.STAGING.ORDERS

Staging Layer (dbt View):
- DBT_ELT.ANALYTICS.STG_ORDERS

Incremental Model:
- DBT_ELT.ANALYTICS.ORDERS

Analytics Mart:
- DBT_ELT.ANALYTICS.FCT_ORDERS

## Key Features

- Incremental loading using dbt
- Layered warehouse architecture (Raw → Staging → Mart)
- Cloud storage integration
- Data quality testing
- Production-style schema separation

## Tech Stack

- Snowflake
- dbt
- AWS S3
- Python
- SQL

## How to Run

1. Load raw data into Snowflake
2. Run:

   dbt run
   dbt test
   dbt docs generate

---

This project simulates a real-world cloud data engineering workflow.
