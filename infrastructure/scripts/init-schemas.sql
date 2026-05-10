-- NetView: Initialize database schemas for each microservice
-- This script runs once on first PostgreSQL container boot via docker-entrypoint-initdb.d

CREATE SCHEMA IF NOT EXISTS auth_schema;
CREATE SCHEMA IF NOT EXISTS txn_schema;

GRANT ALL ON SCHEMA auth_schema TO netview;
GRANT ALL ON SCHEMA txn_schema TO netview;
