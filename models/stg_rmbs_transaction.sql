{{ config(materialized='view') }}

select
    {{ trim_macro(null_if_nd('transaction_id')) }}        as transaction_id,
    {{ trim_macro(null_if_nd('loan_id')) }}               as loan_id,
    {{ trim_macro('transaction_type') }}      as transaction_type,
    {{ parse_number('transaction_amount') }} as transaction_amount,
    {{ parse_date('transaction_date') }}     as transaction_date,
    {{ parse_date('reporting_period') }}     as reporting_period
from DBT_LEARNING.RAW.RMBS_TRANSACTION

