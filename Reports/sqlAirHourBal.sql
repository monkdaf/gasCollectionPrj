SELECT 
	t.dtStart,
	CPSetc.FE as CPSetc, --FE2.1
	DP9etc.FE as DP9etc, --FE2.2
	SPC1etc.FE as SPC1etc  --FE2.3
FROM [v_GasCollectionData] t
LEFT JOIN [v_GasCollectionData] CPSetc ON CPSetc.IDeq = 10113 AND t.dtStart=CPSetc.dtStart
LEFT JOIN [v_GasCollectionData] DP9etc ON DP9etc.IDeq = 10117 AND t.dtStart = DP9etc.dtStart
LEFT JOIN [v_GasCollectionData] SPC1etc ON SPC1etc.IDeq = 10121 AND t.dtStart = SPC1etc.dtStart

WHERE t.dtEnd BETWEEN '2016-12-21 09:00' AND '2016-12-21 15:59'
--WHERE t.dtEnd BETWEEN (select convert(datetime,convert(varchar(11),@DtBegin,120)+'00:00',120))
--AND (select convert(datetime,convert(varchar(11),@DtEnd,120)+'23:59',120))
GROUP BY  
	t.dtStart,
	CPSetc.FE,
	DP9etc.FE,
	SPC1etc.FE