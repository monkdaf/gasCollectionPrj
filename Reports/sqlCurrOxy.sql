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

	--TEP2
	--FE3.1_norm
	FE31_norm.Value as FE31_norm, PE31.Value as PE31, TE31.Value as TE31, QE31.Value as QE31, 
	--FE3.2_norm
	FE32_norm.Value as FE32_norm, PE32.Value as PE32, TE32.Value as TE32, 
	--FE3.3_norm 
	FE33_norm.Value as FE33_norm, PE33.Value as PE33, TE33.Value as TE33,
	--FE3.4_norm 
	FE34_norm.Value as FE34_norm, PE34.Value as PE34, TE34.Value as TE34,
	--QE3.2, QE3.3, QE3.4
	QE32.Value as QE32, QE33.Value as QE33, QE34.Value as QE34,
	
	--TEP3
	--FE3.9_norm
	FE39_norm.Value as FE39_norm, PE39.Value as PE39, TE39.Value as TE39, QE310.Value as QE310, 
	--QE3.11
	QE311.Value as QE311,

	--Linde
	--FE_7103_04A_F02_norm
	FE_7103_04A_F02_norm.Value as FE_7103_04A_F02_norm, PE_7103_04A_P06.Value as PE_7103_04A_P06, TE_7103_04A_T01.Value as TE_7103_04A_T01, QE_7101_10_A66.Value as QE_7101_10_A66, 
	--FE_7103_04B_F02_norm
	FE_7103_04B_F02_norm.Value as FE_7103_04B_F02_norm, PE_7103_04B_P06.Value as PE_7103_04B_P06, TE_7103_04B_T01.Value as TE_7103_04B_T01, 
	--FE_7105_04_F02_norm 
	FE_7105_04_F02_norm.Value as FE_7105_04_F02_norm, PE_7105_04_P06.Value as PE_7105_04_P06, TE_7105_04_T01.Value as TE_7105_04_T01


FROM [dbo].[CurData] t
LEFT JOIN [dbo].[CurData] PE35 ON PE35.ID = 37
LEFT JOIN [dbo].[CurData] TE35 ON TE35.ID = 38
LEFT JOIN [dbo].[CurData] QE35 ON QE35.ID = 39
LEFT JOIN [dbo].[CurData] FE35_norm ON FE35_norm.ID = 41

LEFT JOIN [dbo].[CurData] PE36 ON PE36.ID = 43
LEFT JOIN [dbo].[CurData] TE36 ON TE36.ID = 44
LEFT JOIN [dbo].[CurData] FE36_norm ON FE36_norm.ID = 46

LEFT JOIN [dbo].[CurData] PE37 ON PE37.ID = 48                       
LEFT JOIN [dbo].[CurData] TE37 ON TE37.ID = 49
LEFT JOIN [dbo].[CurData] FE37_norm ON FE37_norm.ID = 51

LEFT JOIN [dbo].[CurData] PE38 ON PE38.ID = 53
LEFT JOIN [dbo].[CurData] TE38 ON TE38.ID = 54
LEFT JOIN [dbo].[CurData] QE36 ON QE36.ID = 55
LEFT JOIN [dbo].[CurData] FE38_norm ON FE38_norm.ID = 57

LEFT JOIN [dbo].[CurData] QE37 ON QE37.ID = 59
LEFT JOIN [dbo].[CurData] QE38 ON QE38.ID = 60
LEFT JOIN [dbo].[CurData] QE39 ON QE39.ID = 61

LEFT JOIN [dbo].[CurData] PE31 ON PE31.ID = 62
LEFT JOIN [dbo].[CurData] TE31 ON TE31.ID = 63
LEFT JOIN [dbo].[CurData] QE31 ON QE31.ID = 64
LEFT JOIN [dbo].[CurData] FE31_norm ON FE31_norm.ID = 66

LEFT JOIN [dbo].[CurData] PE32 ON PE32.ID = 68
LEFT JOIN [dbo].[CurData] TE32 ON TE32.ID = 69
LEFT JOIN [dbo].[CurData] FE32_norm ON FE32_norm.ID = 71

LEFT JOIN [dbo].[CurData] PE33 ON PE33.ID = 73                       
LEFT JOIN [dbo].[CurData] TE33 ON TE33.ID = 74
LEFT JOIN [dbo].[CurData] FE33_norm ON FE33_norm.ID = 76

LEFT JOIN [dbo].[CurData] PE34 ON PE34.ID = 78
LEFT JOIN [dbo].[CurData] TE34 ON TE34.ID = 79
LEFT JOIN [dbo].[CurData] FE34_norm ON FE34_norm.ID = 81

LEFT JOIN [dbo].[CurData] QE32 ON QE32.ID = 83
LEFT JOIN [dbo].[CurData] QE33 ON QE33.ID = 84
LEFT JOIN [dbo].[CurData] QE34 ON QE34.ID = 85

LEFT JOIN [dbo].[CurData] PE39 ON PE39.ID = 97
LEFT JOIN [dbo].[CurData] TE39 ON TE39.ID = 98
LEFT JOIN [dbo].[CurData] QE310 ON QE310.ID = 100
LEFT JOIN [dbo].[CurData] FE39_norm ON FE39_norm.ID = 101
LEFT JOIN [dbo].[CurData] QE311 ON QE311.ID = 103

LEFT JOIN [dbo].[CurData] PE_7103_04A_P06 ON PE_7103_04A_P06.ID = 177
LEFT JOIN [dbo].[CurData] TE_7103_04A_T01 ON TE_7103_04A_T01.ID = 178
LEFT JOIN [dbo].[CurData] QE_7101_10_A66 ON QE_7101_10_A66.ID = 180
LEFT JOIN [dbo].[CurData] FE_7103_04A_F02_norm ON FE_7103_04A_F02_norm.ID = 181

LEFT JOIN [dbo].[CurData] PE_7103_04B_P06 ON PE_7103_04B_P06.ID = 183
LEFT JOIN [dbo].[CurData] TE_7103_04B_T01 ON TE_7103_04B_T01.ID = 184
LEFT JOIN [dbo].[CurData] FE_7103_04B_F02_norm ON FE_7103_04B_F02_norm.ID = 186

LEFT JOIN [dbo].[CurData] PE_7105_04_P06 ON PE_7105_04_P06.ID = 188                      
LEFT JOIN [dbo].[CurData] TE_7105_04_T01 ON TE_7105_04_T01.ID = 189
LEFT JOIN [dbo].[CurData] FE_7105_04_F02_norm ON FE_7105_04_F02_norm.ID = 191


GROUP BY  
	t.dt,
	FE35_norm.Value, PE35.Value, TE35.Value, QE35.Value,
	FE36_norm.Value, PE36.Value, TE36.Value,
	FE37_norm.Value, PE37.Value, TE37.Value,
	FE38_norm.Value, PE38.Value, TE38.Value, QE36.Value,
	QE37.Value, QE38.Value, QE39.Value,
	FE31_norm.Value, PE31.Value, TE31.Value, QE31.Value,
	FE32_norm.Value, PE32.Value, TE32.Value,
	FE33_norm.Value, PE33.Value, TE33.Value,
	FE34_norm.Value, PE34.Value, TE34.Value,
	QE32.Value, QE33.Value, QE34.Value,
	FE39_norm.Value, PE39.Value, TE39.Value, QE310.Value,
	QE311.Value,
	FE_7103_04A_F02_norm.Value, PE_7103_04A_P06.Value, TE_7103_04A_T01.Value, QE_7101_10_A66.Value,
	FE_7103_04B_F02_norm.Value, PE_7103_04B_P06.Value, TE_7103_04B_T01.Value,
	FE_7105_04_F02_norm.Value, PE_7105_04_P06.Value, TE_7105_04_T01.Value