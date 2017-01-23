SELECT TOP 1
	t.dt,
	--CRV
	--FE3.10_normQ
	FE310_normQ.Value as FE310_normQ, PE310.Value as PE310, TE310.Value as TE310, QE312.Value as QE312,
	--FE3.10_normQ
	FE311_normQ.Value as FE311_normQ, PE311.Value as PE311, TE311.Value as TE311, QE313.Value as QE313,
	--FE3.11_normQ
	FE312_normQ.Value as FE312_normQ, PE312.Value as PE312, TE312.Value as TE312, QE314.Value as QE314,
	--FE3.12_normQ
	FE313_normQ.Value as FE313_normQ, PE313.Value as PE313, TE313.Value as TE313, QE315.Value as QE315,
	--FE3.24_normQ
	--FE324_normQ.Value as FE324_normQ, PE326.Value as PE326, TE324.Value as TE324,
	--FE3.25_normQ
	--FE325_normQ.Value as FE325_normQ, PE327.Value as PE327, TE325.Value as TE325,
	--PE3.14, 15
	PE314.Value as PE314, PE315.Value as PE315



FROM [dbo].[CurData] t
LEFT JOIN [dbo].[CurData] PE310 ON PE310.ID = 153
LEFT JOIN [dbo].[CurData] TE310 ON TE310.ID = 154
LEFT JOIN [dbo].[CurData] QE312 ON QE312.ID = 156
LEFT JOIN [dbo].[CurData] FE310_normQ ON FE310_normQ.ID = 158

LEFT JOIN [dbo].[CurData] PE311 ON PE311.ID = 159
LEFT JOIN [dbo].[CurData] TE311 ON TE311.ID = 160
LEFT JOIN [dbo].[CurData] QE313 ON QE313.ID = 162
LEFT JOIN [dbo].[CurData] FE311_normQ ON FE311_normQ.ID = 164

LEFT JOIN [dbo].[CurData] PE312 ON PE312.ID = 165
LEFT JOIN [dbo].[CurData] TE312 ON TE312.ID = 166
LEFT JOIN [dbo].[CurData] QE314 ON QE314.ID = 168
LEFT JOIN [dbo].[CurData] FE312_normQ ON FE312_normQ.ID = 170

LEFT JOIN [dbo].[CurData] PE313 ON PE313.ID = 171
LEFT JOIN [dbo].[CurData] TE313 ON TE313.ID = 172
LEFT JOIN [dbo].[CurData] QE315 ON QE315.ID = 174
LEFT JOIN [dbo].[CurData] FE313_normQ ON FE313_normQ.ID = 176

	--FE324_normQ.Value, PE326.Value, TE324.Value,
	--FE325_normQ.Value, PE327.Value, TE325.Value,

LEFT JOIN [dbo].[CurData] PE314 ON PE314.ID = 139
LEFT JOIN [dbo].[CurData] PE315 ON PE315.ID = 140

GROUP BY

	t.dt,
	FE310_normQ.Value, PE310.Value, TE310.Value, QE312.Value,
	FE311_normQ.Value, PE311.Value, TE311.Value, QE313.Value,
	FE312_normQ.Value, PE312.Value, TE312.Value, QE314.Value,
	FE313_normQ.Value, PE313.Value, TE313.Value, QE315.Value,
	--FE324_normQ.Value, PE326.Value, TE324.Value,
	--FE325_normQ.Value, PE327.Value, TE325.Value,
	PE314.Value, PE315.Value
