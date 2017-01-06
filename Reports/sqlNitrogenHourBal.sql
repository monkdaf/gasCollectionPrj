SELECT 
	t.dtStart,
	Linde.FE as Linde, Linde.QE as Linde_Q, --FE_7303_04_F02
	LindeKKC.FE as LindeKKC, LindeKKC.QE as LindeKKC_Q, --FE1.1
	KKCARP.FE as KKCARP, KKCARP.QE as KKCARP_Q, --FE1.2
	DP9_1.FE as DP9_1, DP9_1.QE as DP9_1_Q, --FE1.3
	DP9_2.FE as DP9_2, DP9_2.QE as DP9_2_Q --FE1.4
FROM [v_GasCollectionData] t
LEFT JOIN [v_GasCollectionData] Linde ON Linde.IDeq = 10202 AND t.dtStart=Linde.dtStart
LEFT JOIN [v_GasCollectionData] LindeKKC ON LindeKKC.IDeq = 10010 AND t.dtStart=LindeKKC.dtStart
LEFT JOIN [v_GasCollectionData] KKCARP ON KKCARP.IDeq = 10016 AND t.dtStart = KKCARP.dtStart
LEFT JOIN [v_GasCollectionData] DP9_1 ON DP9_1.IDeq = 10095 AND t.dtStart = DP9_1.dtStart
LEFT JOIN [v_GasCollectionData] DP9_2 ON DP9_2.IDeq = 10101 AND t.dtStart = DP9_2.dtStart

--WHERE t.dtEnd BETWEEN '2017-01-05 09:00' AND '2017-01-05 15:59'
WHERE t.dtEnd BETWEEN (select convert(datetime,convert(varchar(11),@DtBegin,120)+'00:00',120))
AND (select convert(datetime,convert(varchar(11),@DtEnd,120)+'23:59',120))
GROUP BY  
	t.dtStart,
	Linde.FE, Linde.QE,
	LindeKKC.FE, LindeKKC.QE,
	KKCARP.FE, KKCARP.QE,
	DP9_1.FE, DP9_1.QE,
	DP9_2.FE, DP9_2.QE