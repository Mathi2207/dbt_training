{{
    config(
        materialized='table'
    )
}}

select * from RAW.DBT.orders