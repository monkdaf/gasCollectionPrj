--DECLARE @DtBegin datetime = '2017-03-21';
--DECLARE @DtEnd datetime = '2017-03-22';

DECLARE @DtBeginFull datetime = @DtBegin+' 19:00';
DECLARE @DtEndFull datetime = @DtEnd+' 18:59';

DECLARE @SegmenState int = 1;

SELECT 
	t.dtStart,
	Linde.FE as Linde, Linde.QE as Linde_Q, --FE_7303_04_F02
	LindeKKC.FE as LindeKKC, LindeKKC.QE as LindeKKC_Q, --FE1.1
	KKCARP.FE as KKCARP, KKCARP.QE as KKCARP_Q, --FE1.2
	DP9_1.FE as DP9_1, DP9_1.QE as DP9_1_Q, --FE1.3
	DP9_2.FE as DP9_2, DP9_2.QE as DP9_2_Q --FE1.4
FROM (SELECT NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, e.Description FROM dbo.SegmentResponse AS sr INNER JOIN dbo.MaterialActual AS ma LEFT OUTER JOIN dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN dbo.Equipment AS e ON ea.EquipmentID = e.ID WHERE sr.ActualStartTime >= @DtBeginFull AND sr.ActualStartTime <= @DtEndFull AND sr.SegmentState = @SegmenState) t
LEFT JOIN (SELECT NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, e.Description FROM dbo.SegmentResponse AS sr INNER JOIN dbo.MaterialActual AS ma LEFT OUTER JOIN dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN dbo.Equipment AS e ON ea.EquipmentID = e.ID WHERE sr.ActualStartTime >= @DtBeginFull AND sr.ActualStartTime <= @DtEndFull AND sr.SegmentState = @SegmenState) Linde ON Linde.IDeq = 10202 AND t.dtStart=Linde.dtStart
LEFT JOIN (SELECT NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, e.Description FROM dbo.SegmentResponse AS sr INNER JOIN dbo.MaterialActual AS ma LEFT OUTER JOIN dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN dbo.Equipment AS e ON ea.EquipmentID = e.ID WHERE sr.ActualStartTime >= @DtBeginFull AND sr.ActualStartTime <= @DtEndFull AND sr.SegmentState = @SegmenState) LindeKKC ON LindeKKC.IDeq = 10010 AND t.dtStart=LindeKKC.dtStart
LEFT JOIN (SELECT NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, e.Description FROM dbo.SegmentResponse AS sr INNER JOIN dbo.MaterialActual AS ma LEFT OUTER JOIN dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN dbo.Equipment AS e ON ea.EquipmentID = e.ID WHERE sr.ActualStartTime >= @DtBeginFull AND sr.ActualStartTime <= @DtEndFull AND sr.SegmentState = @SegmenState) KKCARP ON KKCARP.IDeq = 10016 AND t.dtStart = KKCARP.dtStart
LEFT JOIN (SELECT NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, e.Description FROM dbo.SegmentResponse AS sr INNER JOIN dbo.MaterialActual AS ma LEFT OUTER JOIN dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN dbo.Equipment AS e ON ea.EquipmentID = e.ID WHERE sr.ActualStartTime >= @DtBeginFull AND sr.ActualStartTime <= @DtEndFull AND sr.SegmentState = @SegmenState) DP9_1 ON DP9_1.IDeq = 10095 AND t.dtStart = DP9_1.dtStart
LEFT JOIN (SELECT NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, e.Description FROM dbo.SegmentResponse AS sr INNER JOIN dbo.MaterialActual AS ma LEFT OUTER JOIN dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN dbo.Equipment AS e ON ea.EquipmentID = e.ID WHERE sr.ActualStartTime >= @DtBeginFull AND sr.ActualStartTime <= @DtEndFull AND sr.SegmentState = @SegmenState) DP9_2 ON DP9_2.IDeq = 10101 AND t.dtStart = DP9_2.dtStart

--WHERE t.dtEnd BETWEEN '2017-01-05 09:00' AND '2017-01-05 15:59'
--WHERE t.dtEnd BETWEEN (select convert(datetime,convert(varchar(11),@DtBegin,120)+'19:00',120))
--AND (select convert(datetime,convert(varchar(11),@DtEnd,120)+'18:59',120))
GROUP BY  
	t.dtStart,
	Linde.FE, Linde.QE,
	LindeKKC.FE, LindeKKC.QE,
	KKCARP.FE, KKCARP.QE,
	DP9_1.FE, DP9_1.QE,
	DP9_2.FE, DP9_2.QE

ORDER BY t.dtStart 