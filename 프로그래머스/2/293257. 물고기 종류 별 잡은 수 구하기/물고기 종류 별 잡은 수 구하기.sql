SELECT 
    FI.FISH_COUNT, 
    FNI.FISH_NAME
  FROM (
       SELECT FI.FISH_TYPE
            , COUNT(*) FISH_COUNT
         FROM FISH_INFO FI
        GROUP BY FI.FISH_TYPE
       ) FI
  LEFT JOIN FISH_NAME_INFO FNI
    ON FI.FISH_TYPE = FNI.FISH_TYPE
 ORDER BY FI.FISH_COUNT DESC