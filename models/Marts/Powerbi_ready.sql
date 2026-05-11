{{ config(
    materialized = 'table'
) }}

select
    transaction_id,
    loan_id,

    -- transaction classification
    transaction_type,

    -- dates
    transaction_date,
    reporting_period,

    -- measures
    transaction_amount,

    -- derived business flags
    case 
        when transaction_amount < 0 then 'OUTFLOW'
        else 'INFLOW'
    end as cashflow_direction,

    -- audit fields
    current_timestamp() as mart_loaded_at

from {{ ref('stg_rmbs_transaction') }}