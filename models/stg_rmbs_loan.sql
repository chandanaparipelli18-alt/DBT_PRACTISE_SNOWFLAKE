
{{ config(materialized='view') }}

select
    {{ null_if_nd('loan_id') }}          as loan_id,
    {{ null_if_nd('cis_key') }}           as cis_key,
    {{ parse_number('loan_amount') }}     as loan_amount,
    {{ parse_number('interest_rate') }}   as interest_rate,
    {{ parse_date('reporting_period') }}  as reporting_period
from DBT_LEARNING.RAW.RMBS_LOAN





