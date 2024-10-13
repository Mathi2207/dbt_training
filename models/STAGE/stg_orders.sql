SELECT 
-- FROM RAW ORDERS
    O.*
--CUSTOMERS
    ,C.*
-- FROM PRODUCT
    ,P.*
    ,(O.ORDERSELLINGPRICE - O.ORDERCOSTPRICE) AS ORDER_PROFIT

FROM
 {{ ref('RAW_ORDERS') }} AS O
LEFT JOIN 
     {{ ref('RAW_CUSTOMER') }} AS C
     
ON 
    C.CUSTOMERID = O.CUSTOMERID
LEFT JOIN
     {{ ref('RAW_PRODUCT') }} AS P
ON 
    P.PRODUCTID = O.PRODUCTID

