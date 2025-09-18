{{ config(materialized='table')}}

select
    CustomerID
    , FirstName
    , LastName
    , Email
    , Phone
    , Address
    , City
    , State
    , ZipCode
    , Updated_at
    , CONCAT(FirstName, ' ', LastName) AS CustomerName
from 
    {{source('landing', 'customers')}}