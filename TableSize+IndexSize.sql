WITH cte
AS
(
	SELECT
		t.name AS TableName,
		SUM(s.used_page_count) AS used_page_count,
		SUM(CASE
				WHEN (i.index_id < 2) THEN (s.in_row_data_page_count  + s.lob_used_page_count + s.row_overflow_used_page_count)
				ELSE s.lob_used_page_count + s.row_overflow_used_page_count
			END) AS Pages
	FROM sys.dm_db_partition_stats AS s
	JOIN sys.tables AS t ON s.object_id = t.object_id
	JOIN sys.indexes AS i ON t.object_id = i.object_id AND s.index_id = i.index_id
	GROUP BY t.name
),
cte2
AS
(
	SELECT
		cte.TableName,
		(cte.Pages * 8.) AS TableSizeInKB,
		((CASE WHEN cte.used_page_count > cte.Pages
			THEN cte.used_page_count - cte.Pages
			ELSE 0
		  END) * 8.) AS IndexSizeInKB
	FROM cte
),
cte3
AS
(
SELECT
	TableName, 
	CAST(TableSizeInKB AS VARCHAR) AS TableSizeInKB, 
	IndexSizeInKB,
	CAST((TableSizeInKB+IndexSizeInKB)/1024*1024 AS INT) AS TotalSize
FROM cte2
)
SELECT * FROM cte3
ORDER BY 4 DESC;
GO