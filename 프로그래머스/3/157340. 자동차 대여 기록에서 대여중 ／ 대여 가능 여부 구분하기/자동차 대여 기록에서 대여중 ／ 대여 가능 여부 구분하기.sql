#모범답안
SELECT 
    CAR_ID, 
    CASE
        WHEN sum('2022-10-16' BETWEEN START_DATE AND END_DATE) = 1 THEN '대여중'
        # max or sum 다가능, = 1, =>1 , <>0 다 가능 왤까요??
        ELSE '대여 가능'
        END AVAILABILITY
FROM 
    CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY 1
ORDER BY 1 DESC