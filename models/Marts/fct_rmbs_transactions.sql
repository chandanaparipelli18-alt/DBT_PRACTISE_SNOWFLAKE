{{ config(materialized='view') }}

select
    txn.transaction_id,
    txn.loan_id,
    txn.transaction_type,
    txn.transaction_amount,
    txn.transaction_date,
    txn.reporting_period
from {{ ref('stg_rmbs_transaction') }} txn
