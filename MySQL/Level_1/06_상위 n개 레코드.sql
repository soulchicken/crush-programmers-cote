-- 코드를 입력하세요
SELECT NAME
FROM ANIMAL_INS AS A
WHERE A.DATETIME = (SELECT MIN(DATETIME) FROM ANIMAL_INS AS B)