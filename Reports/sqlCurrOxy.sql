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
	FE_7105_04_F02_norm.Value as FE_7105_04_F02_norm, PE_7105_04_P06.Value as PE_7105_04_P06, TE_7105_04_T01.Value as TE_7105_04_T01,

	--CRV
	--FE3.10_norm
	FE310_norm.Value as FE310_norm, PE310.Value as PE310, TE310.Value as TE310, QE312.Value as QE312,
	--FE3.10_norm
	FE311_norm.Value as FE311_norm, PE311.Value as PE311, TE311.Value as TE311, QE313.Value as QE313,
	--FE3.11_norm
	FE312_norm.Value as FE312_norm, PE312.Value as PE312, TE312.Value as TE312, QE314.Value as QE314,
	--FE3.12_norm
	FE313_norm.Value as FE313_norm, PE313.Value as PE313, TE313.Value as TE313, QE315.Value as QE315,
	--FE3.24_norm
	FE324_norm.Value as FE324_norm, PE326.Value as PE326, TE324.Value as TE324,
	--FE3.25_norm
	FE325_norm.Value as FE325_norm, PE327.Value as PE327, TE325.Value as TE325,

	--CCompr
	--PE3.14, 15
	PE314.Value as PE314, PE315.Value as PE315,
	--FE3.14_norm
	FE314_norm.Value as FE314_norm, PE316.Value as PE316, TE314.Value as TE314, QE316.Value as QE316,
	--FE3.15_norm
	FE315_norm.Value as FE315_norm, PE317.Value as PE317, TE315.Value as TE315, QE317.Value as QE317,
	--FE3.16_norm
	FE316_norm.Value as FE316_norm, PE318.Value as PE318, TE316.Value as TE316, QE318.Value as QE318,
	--FE3.17_norm
	FE317_norm.Value as FE317_norm, PE319.Value as PE319, TE317.Value as TE317, QE319.Value as QE319,
	--FE3.18_norm
	FE318_norm.Value as FE318_norm, PE320.Value as PE320, TE318.Value as TE318, QE320.Value as QE320,
	--FE3.19_norm
	FE319_norm.Value as FE319_norm, PE321.Value as PE321, TE319.Value as TE319, QE321.Value as QE321,
	--FE3.20_norm
	FE320_norm.Value as FE320_norm, PE322.Value as PE322, TE320.Value as TE320, QE322.Value as QE322,
	--FE3.21_norm
	FE321_norm.Value as FE321_norm, PE323.Value as PE323, TE321.Value as TE321, QE323.Value as QE323,
	--FE3.22_norm
	FE322_norm.Value as FE322_norm, PE324.Value as PE324, TE322.Value as TE322, QE324.Value as QE324

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
	
	LEFT JOIN [dbo].[CurData] PE310 ON PE310.ID = 153
	LEFT JOIN [dbo].[CurData] TE310 ON TE310.ID = 154
	LEFT JOIN [dbo].[CurData] QE312 ON QE312.ID = 156
	LEFT JOIN [dbo].[CurData] FE310_norm ON FE310_norm.ID = 157
	
        LEFT JOIN [dbo].[CurData] PE311 ON PE311.ID = 159
	LEFT JOIN [dbo].[CurData] TE311 ON TE311.ID = 160
	LEFT JOIN [dbo].[CurData] QE313 ON QE313.ID = 162
	LEFT JOIN [dbo].[CurData] FE311_norm ON FE311_norm.ID = 163
        
	LEFT JOIN [dbo].[CurData] PE312 ON PE312.ID = 165
	LEFT JOIN [dbo].[CurData] TE312 ON TE312.ID = 166
        LEFT JOIN [dbo].[CurData] QE314 ON QE314.ID = 168
	LEFT JOIN [dbo].[CurData] FE312_norm ON FE312_norm.ID = 169
	
	LEFT JOIN [dbo].[CurData] PE313 ON PE313.ID = 171
	LEFT JOIN [dbo].[CurData] TE313 ON TE313.ID = 172
	LEFT JOIN [dbo].[CurData] QE315 ON QE315.ID = 174
	LEFT JOIN [dbo].[CurData] FE313_norm ON FE313_norm.ID = 175

	LEFT JOIN [dbo].[CurData] PE326 ON PE326.ID = 209
	LEFT JOIN [dbo].[CurData] TE324 ON TE324.ID = 210
	LEFT JOIN [dbo].[CurData] FE324_norm ON FE324_norm.ID = 212

	LEFT JOIN [dbo].[CurData] PE327 ON PE327.ID = 214
	LEFT JOIN [dbo].[CurData] TE325 ON TE325.ID = 215
	LEFT JOIN [dbo].[CurData] FE325_norm ON FE325_norm.ID = 217

	LEFT JOIN [dbo].[CurData] PE314 ON PE314.ID = 139
	LEFT JOIN [dbo].[CurData] PE315 ON PE315.ID = 140

	LEFT JOIN [dbo].[CurData] PE316 ON PE316.ID = 141
	LEFT JOIN [dbo].[CurData] TE314 ON TE314.ID = 142
	LEFT JOIN [dbo].[CurData] QE316 ON QE316.ID = 144
	LEFT JOIN [dbo].[CurData] FE314_norm ON FE314_norm.ID = 145

	LEFT JOIN [dbo].[CurData] PE317 ON PE317.ID = 147
	LEFT JOIN [dbo].[CurData] TE315 ON TE315.ID = 148
	LEFT JOIN [dbo].[CurData] QE317 ON QE317.ID = 150
	LEFT JOIN [dbo].[CurData] FE315_norm ON FE315_norm.ID = 151

	LEFT JOIN [dbo].[CurData] PE318 ON PE318.ID = 116
	LEFT JOIN [dbo].[CurData] TE316 ON TE316.ID = 117
	LEFT JOIN [dbo].[CurData] QE318 ON QE318.ID = 119
	LEFT JOIN [dbo].[CurData] FE316_norm ON FE316_norm.ID = 120

	LEFT JOIN [dbo].[CurData] PE319 ON PE319.ID = 122
	LEFT JOIN [dbo].[CurData] TE317 ON TE317.ID = 123
	LEFT JOIN [dbo].[CurData] QE319 ON QE319.ID = 125
	LEFT JOIN [dbo].[CurData] FE317_norm ON FE317_norm.ID = 126

	LEFT JOIN [dbo].[CurData] PE320 ON PE320.ID = 13
	LEFT JOIN [dbo].[CurData] TE318 ON TE318.ID = 14
	LEFT JOIN [dbo].[CurData] QE320 ON QE320.ID = 15
	LEFT JOIN [dbo].[CurData] FE318_norm ON FE318_norm.ID = 17

	LEFT JOIN [dbo].[CurData] PE321 ON PE321.ID = 128
	LEFT JOIN [dbo].[CurData] TE319 ON TE319.ID = 129
	LEFT JOIN [dbo].[CurData] QE321 ON QE321.ID = 131
	LEFT JOIN [dbo].[CurData] FE319_norm ON FE319_norm.ID = 132

	LEFT JOIN [dbo].[CurData] PE322 ON PE322.ID = 19
	LEFT JOIN [dbo].[CurData] TE320 ON TE320.ID = 20
	LEFT JOIN [dbo].[CurData] QE322 ON QE322.ID = 21
	LEFT JOIN [dbo].[CurData] FE320_norm ON FE320_norm.ID = 23

	LEFT JOIN [dbo].[CurData] PE323 ON PE323.ID = 25
	LEFT JOIN [dbo].[CurData] TE321 ON TE321.ID = 26
	LEFT JOIN [dbo].[CurData] QE323 ON QE323.ID = 27
	LEFT JOIN [dbo].[CurData] FE321_norm ON FE321_norm.ID = 29

	LEFT JOIN [dbo].[CurData] PE324 ON PE324.ID = 31
	LEFT JOIN [dbo].[CurData] TE322 ON TE322.ID = 32
	LEFT JOIN [dbo].[CurData] QE324 ON QE324.ID = 33
	LEFT JOIN [dbo].[CurData] FE322_norm ON FE322_norm.ID = 35

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
	FE_7105_04_F02_norm.Value, PE_7105_04_P06.Value, TE_7105_04_T01.Value,
	FE310_norm.Value, PE310.Value, TE310.Value, QE312.Value,
	FE311_norm.Value, PE311.Value, TE311.Value, QE313.Value,
	FE312_norm.Value, PE312.Value, TE312.Value, QE314.Value,
	FE313_norm.Value, PE313.Value, TE313.Value, QE315.Value,
	FE324_norm.Value, PE326.Value, TE324.Value,
	FE325_norm.Value, PE327.Value, TE325.Value,
	PE314.Value, PE315.Value,
	FE314_norm.Value, PE316.Value, TE314.Value, QE316.Value,
	FE315_norm.Value, PE317.Value, TE315.Value, QE317.Value,
	FE316_norm.Value, PE318.Value, TE316.Value, QE318.Value,
	FE317_norm.Value, PE319.Value, TE317.Value, QE319.Value,
	FE318_norm.Value, PE320.Value, TE318.Value, QE320.Value,
	FE319_norm.Value, PE321.Value, TE319.Value, QE321.Value,
	FE320_norm.Value, PE322.Value, TE320.Value, QE322.Value,
	FE321_norm.Value, PE323.Value, TE321.Value, QE323.Value,
	FE322_norm.Value, PE324.Value, TE322.Value, QE324.Value
