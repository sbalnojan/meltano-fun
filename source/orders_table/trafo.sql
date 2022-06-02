
{{
   config(
     materialized='table'
   )
 }}

 select *
 from {{ source('tap_spreadsheets_anywhere', 'orders_table') }}
 where order_id = 1
