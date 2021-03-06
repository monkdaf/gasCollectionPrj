DECLARE @DtBegin datetime = '2017-02-20';
DECLARE @DtEnd datetime = '2017-02-21';

SELECT 
	t.dtStart,
	AKAR2.FE as AKAR2,
	AKAR2.QE as AKAR2_Q,
	KAR30_6.FE as KAR30_6, KAR30_6.QE as KAR30_6_Q,
	KAR30_7.FE as KAR30_7, KAR30_7.QE as KAR30_7_Q,
	KAR30_8.FE as KAR30_8, KAR30_8.QE as KAR30_8_Q,
	TEP1.FE as TEP1, TEP1.QE as TEP1_Q,
	TEP2.FE as TEP2, TEP2.QE as TEP2_Q,
	TEP3.FE as TEP3, TEP3.QE as TEP3_Q,
	comprTEP1.FE as comprTEP1, comprTEP1.QE as comprTEP1_Q,
	comprTEP2.FE as comprTEP2, comprTEP2.QE as comprTEP2_Q,
	comprTEP3.FE as comprTEP3, comprTEP3.QE as comprTEP3_Q,
	TEP1_TVD2a.FE as TEP1_TVD2a,
	TEP1_TVD5a.FE as TEP1_TVD5a,
	TEP1_TVD8bis.FE as TEP1_TVD8bis, TEP1_TVD8bis.QE as TEP1_TVD8bis_Q,
	TEP2_TVD9.FE as TEP2_TVD9, TEP2_TVD9.QE as TEP2_TVD9_Q,
	TEP2_TVD10.FE as TEP2_TVD10, TEP2_TVD10.QE as TEP2_TVD10_Q,
	TEP2_TVD11.FE as TEP2_TVD11, TEP2_TVD11.QE as TEP2_TVD11_Q,
	autogen.FE as autogen,
	plug1.FE as plug1,
	KKC1.FE as KKC1, KKC1.QE as KKC1_Q,
	KKC2.FE as KKC2, KKC2.QE as KKC2_Q,
	comprKKC1.FE as comprKKC1, comprKKC1.QE as comprKKC1_Q,
	comprKKC2.FE as comprKKC2, comprKKC2.QE as comprKKC2_Q,
	LindeGas1.FE as LindeGas1, LindeGas1.QE as LindeGas1_Q,
	LindeGas2.FE as LindeGas2, LindeGas2.QE as LindeGas2_Q,
	comprLindeGas1.FE as comprLindeGas1, comprLindeGas1.QE as comprLindeGas1_Q,
	comprLindeGas2.FE as comprLindeGas2, comprLindeGas2.QE as comprLindeGas2_Q,
	LindeGasTEP12.FE AS LindeGasTEP12, LindeGasTEP12.QE AS LindeGasTEP12_Q
FROM [v_GasCollectionData] t
LEFT JOIN [v_GasCollectionData] AKAR2 ON AKAR2.IDeq = 10180 AND t.dtStart=AKAR2.dtStart
LEFT JOIN [v_GasCollectionData] KAR30_6 ON KAR30_6.IDeq = 10162 AND t.dtStart = KAR30_6.dtStart
LEFT JOIN [v_GasCollectionData] KAR30_7 ON KAR30_7.IDeq = 10168 AND t.dtStart = KAR30_7.dtStart
LEFT JOIN [v_GasCollectionData] KAR30_8 ON KAR30_8.IDeq = 10174 AND t.dtStart = KAR30_8.dtStart
LEFT JOIN [v_GasCollectionData] TEP1 ON TEP1.IDeq = 10046 AND t.dtStart = TEP1.dtStart
LEFT JOIN [v_GasCollectionData] TEP2 ON TEP2.IDeq = 10071 AND t.dtStart = TEP2.dtStart
LEFT JOIN [v_GasCollectionData] TEP3 ON TEP3.IDeq = 10107 AND t.dtStart = TEP3.dtStart
LEFT JOIN [v_GasCollectionData] comprTEP1 ON comprTEP1.IDeq = 10150 AND t.dtStart = comprTEP1.dtStart
LEFT JOIN [v_GasCollectionData] comprTEP2 ON comprTEP2.IDeq = 10156 AND t.dtStart = comprTEP2.dtStart
LEFT JOIN [v_GasCollectionData] comprTEP3 ON comprTEP3.IDeq = 10125 AND t.dtStart = comprTEP3.dtStart
LEFT JOIN [v_GasCollectionData] TEP1_TVD2a ON TEP1_TVD2a.IDeq = 10052 AND t.dtStart = TEP1_TVD2a.dtStart
LEFT JOIN [v_GasCollectionData] TEP1_TVD5a ON TEP1_TVD5a.IDeq = 10053 AND t.dtStart = TEP1_TVD5a.dtStart
LEFT JOIN [v_GasCollectionData] TEP1_TVD8bis ON TEP1_TVD8bis.IDeq = 10062 AND t.dtStart = TEP1_TVD8bis.dtStart
LEFT JOIN [v_GasCollectionData] TEP2_TVD9 ON TEP2_TVD9.IDeq = 10077 AND t.dtStart = TEP2_TVD9.dtStart
LEFT JOIN [v_GasCollectionData] TEP2_TVD10 ON TEP2_TVD10.IDeq = 10078 AND t.dtStart = TEP2_TVD10.dtStart
LEFT JOIN [v_GasCollectionData] TEP2_TVD11 ON TEP2_TVD11.IDeq = 10087 AND t.dtStart = TEP2_TVD11.dtStart
LEFT JOIN [v_GasCollectionData] autogen ON autogen.IDeq = 10143 AND t.dtStart = autogen.dtStart
LEFT JOIN [v_GasCollectionData] plug1 ON plug1.IDeq = 10144 AND t.dtStart = plug1.dtStart
LEFT JOIN [v_GasCollectionData] KKC1 ON KKC1.IDeq = 10034 AND t.dtStart = KKC1.dtStart
LEFT JOIN [v_GasCollectionData] KKC2 ON KKC2.IDeq = 10040 AND t.dtStart = KKC2.dtStart
LEFT JOIN [v_GasCollectionData] comprKKC1 ON comprKKC1.IDeq = 10131 AND t.dtStart = comprKKC1.dtStart
LEFT JOIN [v_GasCollectionData] comprKKC2 ON comprKKC2.IDeq = 10137 AND t.dtStart = comprKKC2.dtStart
LEFT JOIN [v_GasCollectionData] LindeGas1 ON LindeGas1.IDeq = 10181 AND t.dtStart = LindeGas1.dtStart
LEFT JOIN [v_GasCollectionData] LindeGas2 ON LindeGas2.IDeq = 10182 AND t.dtStart = LindeGas2.dtStart
LEFT JOIN [v_GasCollectionData] comprLindeGas1 ON comprLindeGas1.IDeq = 10022 AND t.dtStart = comprLindeGas1.dtStart
LEFT JOIN [v_GasCollectionData] comprLindeGas2 ON comprLindeGas2.IDeq = 10028 AND t.dtStart = comprLindeGas2.dtStart
LEFT JOIN [v_GasCollectionData] LindeGasTEP12 ON LindeGasTEP12.IDeq = 10197 AND t.dtStart = LindeGasTEP12.dtStart
--WHERE t.dtEnd BETWEEN '2016-12-21 09:00' AND '2016-12-21 15:59'
WHERE t.dtEnd BETWEEN (select convert(datetime,convert(varchar(11),@DtBegin,120)+'19:00',120))
AND (select convert(datetime,convert(varchar(11),@DtEnd,120)+'18:59',120))
GROUP BY  
	t.dtStart,
	AKAR2.FE, AKAR2.QE,
	KAR30_6.FE, KAR30_6.QE,
	KAR30_7.FE, KAR30_7.QE,
	KAR30_8.FE, KAR30_8.QE,
	TEP1.FE, TEP1.QE,
	TEP2.FE, TEP2.QE,
	TEP3.FE, TEP3.QE,
	comprTEP1.FE, comprTEP1.QE,
	comprTEP2.FE, comprTEP2.QE,
	comprTEP3.FE, comprTEP3.QE,
	TEP1_TVD2a.FE,
	TEP1_TVD5a.FE,
	TEP1_TVD8bis.FE, TEP1_TVD8bis.QE,
	TEP2_TVD9.FE, TEP2_TVD9.QE,
	TEP2_TVD10.FE, TEP2_TVD10.QE,
	TEP2_TVD11.FE, TEP2_TVD11.QE,
	autogen.FE,
	plug1.FE,
	KKC1.FE, KKC1.QE,
	KKC2.FE, KKC2.QE,
	comprKKC1.FE, comprKKC1.QE,
	comprKKC2.FE, comprKKC2.QE,
	LindeGas1.FE, LindeGas1.QE,
	LindeGas2.FE, LindeGas2.QE,
	comprLindeGas1.FE, comprLindeGas1.QE,
	comprLindeGas2.FE, comprLindeGas2.QE,
	LindeGasTEP12.FE, LindeGasTEP12.QE