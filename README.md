# HealthTech Provider Directory & Data Quality Service

## Overview

A RESTful backend service built with FastAPI and PostgreSQL to simulate a healthcare provider directory system. The service supports indexed provider search, ETL-based data normalization, and automated data quality reporting. Designed with audit visibility and role-based access control patterns in mind.

---

## Architecture

FastAPI application layer  
PostgreSQL relational database (normalized schema)  
Indexed search filters for query performance  
ETL-style normalization workflow  
Structured logging and RBAC for audit traceability  

---

## Database Schema

Tables:

- providers  
- specialty  
- network  

Indexes:

- idx_specialty  
- idx_zip  
- idx_network  

Schema design emphasizes normalization, query performance, and data integrity.

---

## API Endpoints

| Method | Endpoint        | Description |
|--------|----------------|-------------|
| GET    | /              | Health check |
| GET    | /providers     | List providers with filters (specialty, zip, network) |
| POST   | /providers     | Create new provider |
| GET    | /quality-report | Generate data quality metrics |
| GET    | /docs          | Swagger documentation |

---

## Data Quality Features

- Duplicate detection  
- Missing field detection  
- Record conflict checks  
- Automated quality reporting  

---

## Security & Audit Considerations

- Role-Based Access Control (RBAC) pattern  
- Structured logging for update tracking  
- Designed for audit-ready operational environments  

---

## Run Locally

```bash
pip install -r requirements.txt
python -m uvicorn app.main:app --reload
