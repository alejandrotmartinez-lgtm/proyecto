{% snapshot scd_customer %}

{{
    config(
      target_schema='snapshots',
      unique_key='C_CUSTKEY',
      strategy='check',
      check_cols=['C_ADDRESS', 'C_PHONE', 'C_ACCTBAL', 'C_MKTSEGMENT']
    )
}}

select * from {{ ref('stg_tpch__customer') }}

{% endsnapshot %}