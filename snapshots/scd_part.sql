{% snapshot scd_part %}

{{
    config(
      target_schema='snapshots',
      unique_key='P_PARTKEY',
      strategy='check',
      check_cols=['P_RETAILPRICE', 'P_MFGR', 'P_BRAND']
    )
}}

select * from {{ ref('stg_tpch__part') }}

{% endsnapshot %}