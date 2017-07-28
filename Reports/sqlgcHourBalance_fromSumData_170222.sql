DECLARE @DtBegin datetime = '2017-02-20';
DECLARE @DtEnd datetime = '2017-02-21';

DECLARE @DtBeginFull datetime = @DtBegin+' 19:00';
DECLARE @DtEndFull datetime = @DtEnd+' 18:59';

SELECT 
	t.dt,
	AKAR2.Value as AKAR2,
	AKAR2_Q.Value as AKAR2_Q,
	KAR30_6.Value as KAR30_6, KAR30_6_Q.Value as KAR30_6_Q,
	KAR30_7.Value as KAR30_7, KAR30_7_Q.Value as KAR30_7_Q,
	KAR30_8.Value as KAR30_8, KAR30_8_Q.Value as KAR30_8_Q,
	TEP1.Value as TEP1, TEP1_Q.Value as TEP1_Q,
	TEP2.Value as TEP2, TEP2_Q.Value as TEP2_Q,
	TEP3.Value as TEP3, TEP3_Q.Value as TEP3_Q,
	comprTEP1.Value as comprTEP1, comprTEP1_Q.Value as comprTEP1_Q,
	comprTEP2.Value as comprTEP2, comprTEP2_Q.Value as comprTEP2_Q,
	comprTEP3.Value as comprTEP3, comprTEP3_Q.Value as comprTEP3_Q,
	TEP1_TVD2a.Value as TEP1_TVD2a,
	TEP1_TVD5a.Value as TEP1_TVD5a,
	TEP1_TVD8bis.Value as TEP1_TVD8bis, TEP1_TVD8bis_Q.Value as TEP1_TVD8bis_Q,
	TEP2_TVD9.Value as TEP2_TVD9, 
	TEP2_TVD10.Value as TEP2_TVD10,
	TEP2_TVD11.Value as TEP2_TVD11,
	autogen.Value as autogen,
	plug1.Value as plug1,
	KKC1.Value as KKC1, KKC1_Q.Value as KKC1_Q,
	KKC2.Value as KKC2, KKC2_Q.Value as KKC2_Q,
	comprKKC1.Value as comprKKC1, comprKKC1_Q.Value as comprKKC1_Q,
	comprKKC2.Value as comprKKC2, comprKKC2_Q.Value as comprKKC2_Q,
	LindeGas1.Value as LindeGas1, LindeGas1_Q.Value as LindeGas1_Q,
	LindeGas2.Value as LindeGas2, 
	comprLindeGas1.Value as comprLindeGas1, comprLindeGas1_Q.Value as comprLindeGas1_Q,
	comprLindeGas2.Value as comprLindeGas2, comprLindeGas2_Q.Value as comprLindeGas2_Q,
	LindeGasTEP12.Value AS LindeGasTEP12
FROM [KRR-PA-CNT-GasForISA95].[dbo].SumData t
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData AKAR2 ON AKAR2.ID = 175 AND t.dt=AKAR2.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData KAR30_6 ON KAR30_6.ID = 157 AND t.dt = KAR30_6.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData KAR30_7 ON KAR30_7.ID = 163 AND t.dt = KAR30_7.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData KAR30_8 ON KAR30_8.ID = 169 AND t.dt = KAR30_8.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData TEP1 ON TEP1.ID = 41 AND t.dt = TEP1.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData TEP2 ON TEP2.ID = 66 AND t.dt = TEP2.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData TEP3 ON TEP3.ID = 101 AND t.dt = TEP3.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData comprTEP1 ON comprTEP1.ID = 145 AND t.dt = comprTEP1.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData comprTEP2 ON comprTEP2.ID = 151 AND t.dt = comprTEP2.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData comprTEP3 ON comprTEP3.ID = 120 AND t.dt = comprTEP3.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData TEP1_TVD2a ON TEP1_TVD2a.ID = 46 AND t.dt = TEP1_TVD2a.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData TEP1_TVD5a ON TEP1_TVD5a.ID = 51 AND t.dt = TEP1_TVD5a.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData TEP1_TVD8bis ON TEP1_TVD8bis.ID = 57 AND t.dt = TEP1_TVD8bis.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData TEP2_TVD9 ON TEP2_TVD9.ID = 71 AND t.dt = TEP2_TVD9.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData TEP2_TVD10 ON TEP2_TVD10.ID = 76 AND t.dt = TEP2_TVD10.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData TEP2_TVD11 ON TEP2_TVD11.ID = 81 AND t.dt = TEP2_TVD11.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData autogen ON autogen.ID = 137 AND t.dt = autogen.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData plug1 ON plug1.ID = 202 AND t.dt = plug1.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData KKC1 ON KKC1.ID = 29 AND t.dt = KKC1.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData KKC2 ON KKC2.ID = 35 AND t.dt = KKC2.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData comprKKC1 ON comprKKC1.ID = 126 AND t.dt = comprKKC1.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData comprKKC2 ON comprKKC2.ID = 132 AND t.dt = comprKKC2.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData LindeGas1 ON LindeGas1.ID = 181 AND t.dt = LindeGas1.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData LindeGas2 ON LindeGas2.ID = 186 AND t.dt = LindeGas2.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData comprLindeGas1 ON comprLindeGas1.ID = 17 AND t.dt = comprLindeGas1.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData comprLindeGas2 ON comprLindeGas2.ID = 23 AND t.dt = comprLindeGas2.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData LindeGasTEP12 ON LindeGasTEP12.ID = 191 AND t.dt = LindeGasTEP12.dt

LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData AKAR2_Q ON AKAR2_Q.ID = 174 AND t.dt=AKAR2_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData KAR30_6_Q ON KAR30_6_Q.ID = 156 AND t.dt = KAR30_6_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData KAR30_7_Q ON KAR30_7_Q.ID = 162 AND t.dt = KAR30_7_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData KAR30_8_Q ON KAR30_8_Q.ID = 168 AND t.dt = KAR30_8_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData TEP1_Q ON TEP1_Q.ID = 39 AND t.dt = TEP1_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData TEP2_Q ON TEP2_Q.ID = 64 AND t.dt = TEP2_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData TEP3_Q ON TEP3_Q.ID = 100 AND t.dt = TEP3_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData comprTEP1_Q ON comprTEP1_Q.ID = 144 AND t.dt = comprTEP1_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData comprTEP2_Q ON comprTEP2_Q.ID = 150 AND t.dt = comprTEP2_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData comprTEP3_Q ON comprTEP3_Q.ID = 119 AND t.dt = comprTEP3_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData TEP1_TVD8bis_Q ON TEP1_TVD8bis_Q.ID = 55 AND t.dt = TEP1_TVD8bis_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData KKC1_Q ON KKC1_Q.ID = 27 AND t.dt = KKC1_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData KKC2_Q ON KKC2_Q.ID = 33 AND t.dt = KKC2_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData comprKKC1_Q ON comprKKC1_Q.ID = 125 AND t.dt = comprKKC1_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData comprKKC2_Q ON comprKKC2_Q.ID = 131 AND t.dt = comprKKC2_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData LindeGas1_Q ON LindeGas1_Q.ID = 180 AND t.dt = LindeGas1_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData comprLindeGas1_Q ON comprLindeGas1_Q.ID = 15 AND t.dt = comprLindeGas1_Q.dt
LEFT JOIN [KRR-PA-CNT-GasForISA95].[dbo].SumData comprLindeGas2_Q ON comprLindeGas2_Q.ID = 21 AND t.dt = comprLindeGas2_Q.dt

WHERE t.dt BETWEEN @DtBeginFull AND @DtEndFull
--WHERE t.dtEnd BETWEEN '2016-12-21 09:00' AND '2016-12-21 15:59'
--WHERE t.dtEnd BETWEEN (select convert(datetime,convert(varchar(11),@DtBegin,120)+'19:00',120))
--AND (select convert(datetime,convert(varchar(11),@DtEnd,120)+'18:59',120))
GROUP BY  
	t.dt,
	AKAR2.Value, AKAR2_Q.Value,
	KAR30_6.Value, KAR30_6_Q.Value,
	KAR30_7.Value, KAR30_7_Q.Value,
	KAR30_8.Value, KAR30_8_Q.Value,
	TEP1.Value, TEP1_Q.Value,
	TEP2.Value, TEP2_Q.Value,
	TEP3.Value, TEP3_Q.Value,
	comprTEP1.Value, comprTEP1_Q.Value,
	comprTEP2.Value, comprTEP2_Q.Value,
	comprTEP3.Value, comprTEP3_Q.Value,
	TEP1_TVD2a.Value,
	TEP1_TVD5a.Value,
	TEP1_TVD8bis.Value, TEP1_TVD8bis_Q.Value,
	TEP2_TVD9.Value,
	TEP2_TVD10.Value,
	TEP2_TVD11.Value,
	autogen.Value,
	plug1.Value,
	KKC1.Value, KKC1_Q.Value,
	KKC2.Value, KKC2_Q.Value,
	comprKKC1.Value, comprKKC1_Q.Value,
	comprKKC2.Value, comprKKC2_Q.Value,
	LindeGas1.Value, LindeGas1_Q.Value,
	LindeGas2.Value, 
	comprLindeGas1.Value, comprLindeGas1_Q.Value,
	comprLindeGas2.Value, comprLindeGas2_Q.Value,
	LindeGasTEP12.Value

ORDER BY t.dt 