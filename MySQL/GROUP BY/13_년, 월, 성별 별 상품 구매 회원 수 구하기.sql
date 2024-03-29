-- 코드를 입력하세요
SELECT YEAR, MONTH, GENDER, COUNT(DISTINCT A.USER_ID) AS USERS
FROM (
    SELECT YEAR(SALES_DATE) AS YEAR, MONTH(SALES_DATE) AS MONTH, USER_ID
    FROM ONLINE_SALE
    GROUP BY YEAR(SALES_DATE), MONTH(SALES_DATE), USER_ID
) A
LEFT JOIN USER_INFO B
ON A.USER_ID = B.USER_ID
WHERE GENDER IS NOT NULL
GROUP BY YEAR, MONTH, GENDER
ORDER BY YEAR, MONTH, GENDER