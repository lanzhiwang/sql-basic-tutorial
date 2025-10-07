--PostgreSQL, MySQL
--SUBSTRING(对象字符串 FROM 截取的起始位置 FOR 截取的字符数)
SELECT str1, SUBSTRING(str1 FROM 3 FOR 2) AS sub_str
FROM SampleStr;