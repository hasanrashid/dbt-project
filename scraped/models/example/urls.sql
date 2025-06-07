{{ config(materialized='view') }}

with
banglabook  as (select url,crawl_status,content_type from {{ ref('banglabook') }}),
amarboi as (select url,crawl_status,content_type from {{ ref('amarboi') }}),
allmagazine as (select url,crawl_status,content_type from {{ ref('allmagazine') }}),
banglaclassicbooks as (select url,crawl_status,content_type from {{ ref('banglaclassicbooks') }}),
banglapdfall as (select url,crawl_status,content_type from {{ ref('banglapdfall') }}),
ebanglabook as (select url,crawl_status,content_type from {{ ref('ebanglabook') }}),
oldcomicsworld as (select url,crawl_status,content_type from {{ ref('oldcomicsworld') }})

select * from banglabook
union all
select * from amarboi
union all
select * from allmagazine
union all
select * from banglaclassicbooks
union all
select * from banglapdfall
union all
select * from ebanglabook
union all
select * from oldcomicsworld

