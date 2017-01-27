SELECT TOP 1
	t.dt,
	--FE1.1_normQ
	FE11_normQ.Value as FE11_normQ, PE11.Value as PE11, TE11.Value as TE11, QE11.Value as QE11,
	--FE1.2_normQ
	FE12_normQ.Value as FE12_normQ, PE12.Value as PE12, TE12.Value as TE12, QE12.Value as QE12,
	--FE1.3_normQ 
	FE13_normQ.Value as FE13_normQ, PE13.Value as PE13, TE13.Value as TE13, QE13.Value as QE13,
	--FE1.4_normQ 
	FE14_normQ.Value as FE14_normQ, PE14.Value as PE14, TE14.Value as TE14,
	--FE7303_04_F02_normQ 
	FE7303_04_F02_normQ.Value as FE7303_04_F02_normQ, PE7303_04_P06.Value as PE7303_04_P06, TE7303_04_T01.Value as TE7303_04_T01, QE7303_10_A56.Value as QE7303_10_A56
	
FROM [KRR-PA-CNT-GasForISA95].[dbo].[CurData] t
LEFT JOIN [dbo].[CurData] PE11 ON PE11.ID = 1
LEFT JOIN [dbo].[CurData] TE11 ON TE11.ID = 2
LEFT JOIN [dbo].[CurData] QE11 ON QE11.ID = 3
LEFT JOIN [dbo].[CurData] FE11_normQ ON FE11_normQ.ID = 6

LEFT JOIN [dbo].[CurData] PE12 ON PE12.ID = 7
LEFT JOIN [dbo].[CurData] TE12 ON TE12.ID = 8
LEFT JOIN [dbo].[CurData] QE12 ON QE12.ID = 9
LEFT JOIN [dbo].[CurData] FE12_normQ ON FE12_normQ.ID = 12

LEFT JOIN [dbo].[CurData] PE13 ON PE13.ID = 86
LEFT JOIN [dbo].[CurData] TE13 ON TE13.ID = 87
LEFT JOIN [dbo].[CurData] QE13 ON QE13.ID = 89
LEFT JOIN [dbo].[CurData] FE13_normQ ON FE13_normQ.ID = 91

LEFT JOIN [dbo].[CurData] PE14 ON PE14.ID = 92
LEFT JOIN [dbo].[CurData] TE14 ON TE14.ID = 93
LEFT JOIN [dbo].[CurData] FE14_normQ ON FE14_normQ.ID = 96

LEFT JOIN [dbo].[CurData] PE7303_04_P06 ON PE7303_04_P06.ID = 193
LEFT JOIN [dbo].[CurData] TE7303_04_T01 ON TE7303_04_T01.ID = 194
LEFT JOIN [dbo].[CurData] QE7303_10_A56 ON QE7303_10_A56.ID = 196
LEFT JOIN [dbo].[CurData] FE7303_04_F02_normQ ON FE7303_04_F02_normQ.ID = 198

GROUP BY  
	t.dt,
	FE11_normQ.Value, PE11.Value, TE11.Value, QE11.Value,
	FE12_normQ.Value, PE12.Value, TE12.Value, QE12.Value,
	FE13_normQ.Value, PE13.Value, TE13.Value, QE13.Value, 
	FE14_normQ.Value, PE14.Value, TE14.Value,
	FE7303_04_F02_normQ.Value, PE7303_04_P06.Value, TE7303_04_T01.Value, QE7303_10_A56.Value

ORDER BY dt DESC