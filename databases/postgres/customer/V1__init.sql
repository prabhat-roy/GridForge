CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE customer_account (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    account_no      TEXT NOT NULL UNIQUE,
    name            TEXT NOT NULL,
    service_address TEXT NOT NULL,
    rate_class      TEXT NOT NULL,
    created_at      TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX customer_account_no_idx ON customer_account (account_no);
