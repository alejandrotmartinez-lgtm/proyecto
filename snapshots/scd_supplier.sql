{% snapshot scd_supplier %}

{{
    config(
      target_schema='snapshots',
      unique_key='S_SUPPKEY',
      strategy='check',
      check_cols=['S_ADDRESS', 'S_PHONE', 'S_ACCTBAL']
    )
}}

select * from {{ ref('stg_tpch__supplier') }}

{% endsnapshot %}