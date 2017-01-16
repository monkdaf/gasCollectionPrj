SELECT TOP 1
	t.dt,
	--TEP1
	--FE3.5_norm
	FE35_norm.Value as FE35_norm, PE35.Value as PE35, TE35.Value as TE35, QE35.Value as QE35, 
	--FE3.6_norm
	FE36_norm.Value as FE36_norm, PE36.Value as PE36, TE36.Value as TE36, 
	--FE3.7_norm
	FE37_norm.Value as FE37_norm, PE37.Value as PE37, TE37.Value as TE37,
	--FE3.8_norm 
	FE38_norm.Value as FE38_norm, PE38.Value as PE38, TE38.Value as TE38, QE36.Value as QE36, 
	--QE3.7, QE3.8, QE3.9
	QE37.Value as QE37, QE38.Value as QE38, QE39.Value as QE39,
	
	--TEP3
	--FE3.9_norm
	FE39_norm.Value as FE39_norm, PE39.Value as PE39, TE39.Value as TE39, QE310.Value as QE310, 
	--QE3.11
	QE311.Value as QE311

FROM [KRR-PA-CNT-GasForISA95].[dbo].[CurData] t
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] PE35 ON PE35.ID = 37
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] TE35 ON TE35.ID = 38
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] QE35 ON QE35.ID = 39
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] FE35_norm ON FE35_norm.ID = 41

LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] PE36 ON PE36.ID = 43
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] TE36 ON TE36.ID = 44
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] FE36_norm ON FE36_norm.ID = 46

LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] PE37 ON PE37.ID = 48
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] TE37 ON TE37.ID = 49
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] FE37_norm ON FE37_norm.ID = 51

LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] PE38 ON PE38.ID = 53
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] TE38 ON TE38.ID = 54
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] QE36 ON QE36.ID = 55
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] FE38_norm ON FE38_norm.ID = 57

LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] QE37 ON QE37.ID = 59
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] QE38 ON QE38.ID = 60
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] QE39 ON QE39.ID = 61

LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] PE39 ON PE39.ID = 97
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] TE39 ON TE39.ID = 98
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] QE310 ON QE310.ID = 100
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] FE39_norm ON FE39_norm.ID = 101
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].[CurData] QE311 ON QE311.ID = 103


GROUP BY  
	t.dt,
	FE35_norm.Value, PE35.Value, TE35.Value, QE35.Value,
	FE36_norm.Value, PE36.Value, TE36.Value,
	FE37_norm.Value, PE37.Value, TE37.Value,
	FE38_norm.Value, PE38.Value, TE38.Value, QE36.Value,
	QE37.Value, QE38.Value, QE39.Value,
	FE39_norm.Value, PE39.Value, TE39.Value, QE310.Value,
	QE311.Value