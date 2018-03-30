/* 
To Connect:
- Server: devsrv\SQLEXPRESS
- Database: FinancialsUS
- UID: sa
- pwd: 
*/

--List all tables
SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE = 'BASE TABLE'
and TABLE_NAME LIKE '%b528ee70-8b63-4bd8-967c-402f9476b428%'


--List Data in tables
SELECT TOP 10 *
FROM [CRONUS USA, Inc_$Customer$b528ee70-8b63-4bd8-967c-402f9476b428]

SELECT TOP 10 *
FROM [CRONUS USA, Inc_$Just Some Table$b528ee70-8b63-4bd8-967c-402f9476b428]

--Snippets (sql...)

--Intellisense

--Export Data (save as)


