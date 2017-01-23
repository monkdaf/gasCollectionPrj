SELECT TOP 1
	t.dt,
	--TEP1
	--FE3.5_normQ
	FE35_normQ.Value as FE35_normQ, PE35.Value as PE35, TE35.Value as TE35, QE35.Value as QE35, 
	--FE3.6_normQ
	FE36_normQ.Value as FE36_normQ, PE36.Value as PE36, TE36.Value as TE36, 
	--FE3.7_normQ
	FE37_normQ.Value as FE37_normQ, PE37.Value as PE37, TE37.Value as TE37,
	--FE3.8_normQ 
	FE38_normQ.Value as FE38_normQ, PE38.Value as PE38, TE38.Value as TE38, QE36.Value as QE36, 
	--QE3.7, QE3.8, QE3.9
	QE37.Value as QE37, QE38.Value as QE38, QE39.Value as QE39,

	--TEP2
	--FE3.1_normQ
	FE31_normQ.Value as FE31_normQ, PE31.Value as PE31, TE31.Value as TE31, QE31.Value as QE31, 
	--FE3.2_normQ
	FE32_normQ.Value as FE32_normQ, PE32.Value as PE32, TE32.Value as TE32, 
	--FE3.3_normQ 
	FE33_normQ.Value as FE33_normQ, PE33.Value as PE33, TE33.Value as TE33,
	--FE3.4_normQ 
	FE34_normQ.Value as FE34_normQ, PE34.Value as PE34, TE34.Value as TE34,
	--QE3.2, QE3.3, QE3.4
	QE32.Value as QE32, QE33.Value as QE33, QE34.Value as QE34,
	
	--TEP3
	--FE3.9_normQ
	FE39_normQ.Value as FE39_normQ, PE39.Value as PE39, TE39.Value as TE39, QE310.Value as QE310, 
	--QE3.11
	QE311.Value as QE311,

	--Linde
	--FE_7103_04A_F02_normQ
	FE_7103_04A_F02_normQ.Value as FE_7103_04A_F02_normQ, PE_7103_04A_P06.Value as PE_7103_04A_P06, TE_7103_04A_T01.Value as TE_7103_04A_T01, QE_7101_10_A66.Value as QE_7101_10_A66, 
	--FE_7103_04B_F02_normQ
	FE_7103_04B_F02_normQ.Value as FE_7103_04B_F02_normQ, PE_7103_04B_P06.Value as PE_7103_04B_P06, TE_7103_04B_T01.Value as TE_7103_04B_T01, 
	--FE_7105_04_F02_normQ 
	FE_7105_04_F02_normQ.Value as FE_7105_04_F02_normQ, PE_7105_04_P06.Value as PE_7105_04_P06, TE_7105_04_T01.Value as TE_7105_04_T01


FROM [dbo].[CurData] t
LEFT JOIN [dbo].[CurData] PE35 ON PE35.ID = 37
LEFT JOIN [dbo].[CurData] TE35 ON TE35.ID = 38
LEFT JOIN [dbo].[CurData] QE35 ON QE35.ID = 39
LEFT JOIN [dbo].[CurData] FE35_normQ ON FE35_normQ.ID = 42

LEFT JOIN [dbo].[CurData] PE36 ON PE36.ID = 43
LEFT JOIN [dbo].[CurData] TE36 ON TE36.ID = 44
LEFT JOIN [dbo].[CurData] FE36_normQ ON FE36_normQ.ID = 47

LEFT JOIN [dbo].[CurData] PE37 ON PE37.ID = 48                       
LEFT JOIN [dbo].[CurData] TE37 ON TE37.ID = 49
LEFT JOIN [dbo].[CurData] FE37_normQ ON FE37_normQ.ID = 52

LEFT JOIN [dbo].[CurData] PE38 ON PE38.ID = 53
LEFT JOIN [dbo].[CurData] TE38 ON TE38.ID = 54
LEFT JOIN [dbo].[CurData] QE36 ON QE36.ID = 55
LEFT JOIN [dbo].[CurData] FE38_normQ ON FE38_normQ.ID = 58

LEFT JOIN [dbo].[CurData] QE37 ON QE37.ID = 59
LEFT JOIN [dbo].[CurData] QE38 ON QE38.ID = 60
LEFT JOIN [dbo].[CurData] QE39 ON QE39.ID = 61

LEFT JOIN [dbo].[CurData] PE31 ON PE31.ID = 62
LEFT JOIN [dbo].[CurData] TE31 ON TE31.ID = 63
LEFT JOIN [dbo].[CurData] QE31 ON QE31.ID = 64
LEFT JOIN [dbo].[CurData] FE31_normQ ON FE31_normQ.ID = 67

LEFT JOIN [dbo].[CurData] PE32 ON PE32.ID = 68
LEFT JOIN [dbo].[CurData] TE32 ON TE32.ID = 69
LEFT JOIN [dbo].[CurData] FE32_normQ ON FE32_normQ.ID = 72

LEFT JOIN [dbo].[CurData] PE33 ON PE33.ID = 73                       
LEFT JOIN [dbo].[CurData] TE33 ON TE33.ID = 74
LEFT JOIN [dbo].[CurData] FE33_normQ ON FE33_normQ.ID = 77

LEFT JOIN [dbo].[CurData] PE34 ON PE34.ID = 78
LEFT JOIN [dbo].[CurData] TE34 ON TE34.ID = 79
LEFT JOIN [dbo].[CurData] FE34_normQ ON FE34_normQ.ID = 82

LEFT JOIN [dbo].[CurData] QE32 ON QE32.ID = 83
LEFT JOIN [dbo].[CurData] QE33 ON QE33.ID = 84
LEFT JOIN [dbo].[CurData] QE34 ON QE34.ID = 85

LEFT JOIN [dbo].[CurData] PE39 ON PE39.ID = 97
LEFT JOIN [dbo].[CurData] TE39 ON TE39.ID = 98
LEFT JOIN [dbo].[CurData] QE310 ON QE310.ID = 100
LEFT JOIN [dbo].[CurData] FE39_normQ ON FE39_normQ.ID = 102
LEFT JOIN [dbo].[CurData] QE311 ON QE311.ID = 103

LEFT JOIN [dbo].[CurData] PE_7103_04A_P06 ON PE_7103_04A_P06.ID = 177
LEFT JOIN [dbo].[CurData] TE_7103_04A_T01 ON TE_7103_04A_T01.ID = 178
LEFT JOIN [dbo].[CurData] QE_7101_10_A66 ON QE_7101_10_A66.ID = 180
LEFT JOIN [dbo].[CurData] FE_7103_04A_F02_normQ ON FE_7103_04A_F02_normQ.ID = 182

LEFT JOIN [dbo].[CurData] PE_7103_04B_P06 ON PE_7103_04B_P06.ID = 183
LEFT JOIN [dbo].[CurData] TE_7103_04B_T01 ON TE_7103_04B_T01.ID = 184
LEFT JOIN [dbo].[CurData] FE_7103_04B_F02_normQ ON FE_7103_04B_F02_normQ.ID = 187

LEFT JOIN [dbo].[CurData] PE_7105_04_P06 ON PE_7105_04_P06.ID = 188                      
LEFT JOIN [dbo].[CurData] TE_7105_04_T01 ON TE_7105_04_T01.ID = 189
LEFT JOIN [dbo].[CurData] FE_7105_04_F02_normQ ON FE_7105_04_F02_normQ.ID = 192


GROUP BY  
	t.dt,
	FE35_normQ.Value, PE35.Value, TE35.Value, QE35.Value,
	FE36_normQ.Value, PE36.Value, TE36.Value,
	FE37_normQ.Value, PE37.Value, TE37.Value,
	FE38_normQ.Value, PE38.Value, TE38.Value, QE36.Value,
	QE37.Value, QE38.Value, QE39.Value,
	FE31_normQ.Value, PE31.Value, TE31.Value, QE31.Value,
	FE32_normQ.Value, PE32.Value, TE32.Value,
	FE33_normQ.Value, PE33.Value, TE33.Value,
	FE34_normQ.Value, PE34.Value, TE34.Value,
	QE32.Value, QE33.Value, QE34.Value,
	FE39_normQ.Value, PE39.Value, TE39.Value, QE310.Value,
	QE311.Value,
	FE_7103_04A_F02_normQ.Value, PE_7103_04A_P06.Value, TE_7103_04A_T01.Value, QE_7101_10_A66.Value,
	FE_7103_04B_F02_normQ.Value, PE_7103_04B_P06.Value, TE_7103_04B_T01.Value,
	FE_7105_04_F02_normQ.Value, PE_7105_04_P06.Value, TE_7105_04_T01.Value