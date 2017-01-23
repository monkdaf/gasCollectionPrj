SELECT TOP 1
	t.dt,
	--CCompr
	--PE3.14, 15
	PE314.Value as PE314, PE315.Value as PE315
	--FE3.14_normQ
	FE314_normQ.Value as FE314_normQ, PE316.Value as PE316, TE314.Value as TE314, QE316.Value as QE316,
	--FE3.15_normQ
	FE315_normQ.Value as FE315_normQ, PE317.Value as PE317, TE315.Value as TE315, QE317.Value as QE317,
	--FE3.16_normQ
	FE316_normQ.Value as FE316_normQ, PE318.Value as PE318, TE316.Value as TE316, QE318.Value as QE318,
	--FE3.17_normQ
	FE317_normQ.Value as FE317_normQ, PE319.Value as PE319, TE317.Value as TE317, QE319.Value as QE319,
	--FE3.18_normQ
	FE318_normQ.Value as FE318_normQ, PE320.Value as PE320, TE318.Value as TE318, QE320.Value as QE320,
	--FE3.19_normQ
	FE319_normQ.Value as FE319_normQ, PE321.Value as PE321, TE319.Value as TE319, QE321.Value as QE321,
	--FE3.20_normQ
	FE320_normQ.Value as FE320_normQ, PE322.Value as PE322, TE320.Value as TE320, QE322.Value as QE322,
	--FE3.21_normQ
	FE321_normQ.Value as FE321_normQ, PE323.Value as PE323, TE321.Value as TE321, QE323.Value as QE323,
	--FE3.22_normQ
	FE322_normQ.Value as FE322_normQ, PE324.Value as PE324, TE322.Value as TE322, QE324.Value as QE324

FROM [dbo].[CurData] t
LEFT JOIN [dbo].[CurData] PE314 ON PE314.ID = 139
LEFT JOIN [dbo].[CurData] PE315 ON PE315.ID = 140

LEFT JOIN [dbo].[CurData] PE316 ON PE316.ID = 141
LEFT JOIN [dbo].[CurData] TE314 ON TE314.ID = 142
LEFT JOIN [dbo].[CurData] QE316 ON QE316.ID = 144
LEFT JOIN [dbo].[CurData] FE314_normQ ON FE314_normQ.ID = 146

LEFT JOIN [dbo].[CurData] PE317 ON PE317.ID = 147
LEFT JOIN [dbo].[CurData] TE315 ON TE315.ID = 148
LEFT JOIN [dbo].[CurData] QE317 ON QE317.ID = 150
LEFT JOIN [dbo].[CurData] FE315_normQ ON FE315_normQ.ID = 152

LEFT JOIN [dbo].[CurData] PE318 ON PE318.ID = 116
LEFT JOIN [dbo].[CurData] TE316 ON TE316.ID = 117
LEFT JOIN [dbo].[CurData] QE318 ON QE318.ID = 119
LEFT JOIN [dbo].[CurData] FE316_normQ ON FE316_normQ.ID = 121

LEFT JOIN [dbo].[CurData] PE319 ON PE319.ID = 122
LEFT JOIN [dbo].[CurData] TE317 ON TE317.ID = 123
LEFT JOIN [dbo].[CurData] QE319 ON QE319.ID = 125
LEFT JOIN [dbo].[CurData] FE317_normQ ON FE317_normQ.ID = 127

LEFT JOIN [dbo].[CurData] PE320 ON PE320.ID = 13
LEFT JOIN [dbo].[CurData] TE318 ON TE318.ID = 14
LEFT JOIN [dbo].[CurData] QE320 ON QE320.ID = 15
LEFT JOIN [dbo].[CurData] FE318_normQ ON FE318_normQ.ID = 18

LEFT JOIN [dbo].[CurData] PE321 ON PE321.ID = 128
LEFT JOIN [dbo].[CurData] TE319 ON TE319.ID = 129
LEFT JOIN [dbo].[CurData] QE321 ON QE321.ID = 131
LEFT JOIN [dbo].[CurData] FE319_normQ ON FE319_normQ.ID = 133

LEFT JOIN [dbo].[CurData] PE322 ON PE322.ID = 19
LEFT JOIN [dbo].[CurData] TE320 ON TE320.ID = 20
LEFT JOIN [dbo].[CurData] QE322 ON QE322.ID = 21
LEFT JOIN [dbo].[CurData] FE320_normQ ON FE320_normQ.ID = 24

LEFT JOIN [dbo].[CurData] PE323 ON PE323.ID = 25
LEFT JOIN [dbo].[CurData] TE321 ON TE321.ID = 26
LEFT JOIN [dbo].[CurData] QE323 ON QE323.ID = 27
LEFT JOIN [dbo].[CurData] FE321_normQ ON FE321_normQ.ID = 30

LEFT JOIN [dbo].[CurData] PE324 ON PE324.ID = 31
LEFT JOIN [dbo].[CurData] TE322 ON TE322.ID = 32
LEFT JOIN [dbo].[CurData] QE324 ON QE324.ID = 33
LEFT JOIN [dbo].[CurData] FE322_normQ ON FE322_normQ.ID = 36

GROUP BY

	t.dt,
	PE314.Value, PE315.Value
	FE314_normQ.Value, PE316.Value, TE314.Value, QE316.Value,
	FE315_normQ.Value, PE317.Value, TE315.Value, QE317.Value,
	FE316_normQ.Value, PE318.Value, TE316.Value, QE318.Value,
	FE317_normQ.Value, PE319.Value, TE317.Value, QE319.Value,
	FE318_normQ.Value, PE320.Value, TE318.Value, QE320.Value,
	FE319_normQ.Value, PE321.Value, TE319.Value, QE321.Value,
	FE320_normQ.Value, PE322.Value, TE320.Value, QE322.Value,
	FE321_normQ.Value, PE323.Value, TE321.Value, QE323.Value,
	FE322_normQ.Value, PE324.Value, TE322.Value, QE324.Value
