SELECT TOP 1
	t.dt,
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
	QE32.Value as QE32, QE33.Value as QE33, QE34.Value as QE34 
	

FROM [dbo].[CurData] t
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


GROUP BY  
	t.dt,
	FE31_norm.Value, PE31.Value, TE31.Value, QE31.Value,
	FE32_norm.Value, PE32.Value, TE32.Value,
	FE33_norm.Value, PE33.Value, TE33.Value,
	FE34_norm.Value, PE34.Value, TE34.Value,
	QE32.Value, QE33.Value, QE34.Value