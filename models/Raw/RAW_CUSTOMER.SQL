{{
    config(
        materialized='table'
    )
}}

select * from RAW.DBT.CUSTOMERS