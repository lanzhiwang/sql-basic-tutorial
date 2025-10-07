--REPLACE(对象字符串, 替换前的字符串, 替换后的字符串)
SELECT str1, str2, str3, REPLACE(str1, str2, str3) AS rep_str
FROM SampleStr;