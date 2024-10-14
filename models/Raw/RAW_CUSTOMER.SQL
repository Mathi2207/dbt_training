SELECT * FROM {{ source('DBT_GLOB', 'customers') }}
