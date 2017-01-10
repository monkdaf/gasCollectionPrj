SELECT TOP 1
	t.dt,
	--FE2.1_norm
	FE21_norm.Value as FE21_norm, PE21.Value as PE21, TE21.Value as TE21, 
	--FE2.2_norm
	FE22_norm.Value as FE22_norm, PE22.Value as PE22, TE22.Value as TE22,
	--FE2.3_norm 
	FE23_norm.Value as FE23_norm, PE23.Value as PE23, TE23.Value as TE23 
	
FROM [KRR-PA-CNT-GasForISA95].[dbo].[CurData] t
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] PE21 ON PE21.ID = 104
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] TE21 ON TE21.ID = 105
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] FE21_norm ON FE21_norm.ID = 107

LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] PE22 ON PE22.ID = 108
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] TE22 ON TE22.ID = 109
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] FE22_norm ON FE22_norm.ID = 111

LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] PE23 ON PE23.ID = 112
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] TE23 ON TE23.ID = 113
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] FE23_norm ON FE23_norm.ID = 115

GROUP BY  
	t.dt,
	FE21_norm.Value, PE21.Value, TE21.Value,
	FE22_norm.Value, PE22.Value, TE22.Value,
	FE23_norm.Value, PE23.Value, TE23.Value

ORDER BY dt DESC