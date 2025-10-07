--SQL Server, PostgreSQL, MySQL

/*
COALESCE是 SQL 特有的函数.
该函数会返回可变参数中左侧开始第 1 个不是 NULL的值.
参数个数是可变的, 因此可以根据需要无限增加.
*/

SELECT COALESCE(NULL, 1)                  AS col_1,
       COALESCE(NULL, 'test', NULL)       AS col_2,
       COALESCE(NULL, NULL, '2009-11-01') AS col_3;