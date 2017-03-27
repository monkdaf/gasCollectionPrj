--DECLARE @DtBegin datetime = '2017-03-21';
--DECLARE @DtEnd datetime = '2017-03-22';

DECLARE @DtBeginFull datetime = @DtBegin+' 19:00';
DECLARE @DtEndFull datetime = @DtEnd+' 18:59';

--DECLARE @SegmentState int = 2;

SELECT 
	t.dtStart,
	CONVERT(varchar(11), t.dtStart, 104) AS dtDateStart,
	CPSetc.FE as CPSetc, --FE2.1
	DP9etc.FE as DP9etc, --FE2.2
	SPC1etc.FE as SPC1etc  --FE2.3
FROM (SELECT NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, e.Description FROM dbo.SegmentResponse AS sr INNER JOIN dbo.MaterialActual AS ma LEFT OUTER JOIN dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN dbo.Equipment AS e ON ea.EquipmentID = e.ID WHERE sr.ActualStartTime >= @DtBeginFull AND sr.ActualStartTime <= @DtEndFull AND sr.SegmentState = @SegmentState) t
LEFT JOIN (SELECT NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, e.Description FROM dbo.SegmentResponse AS sr INNER JOIN dbo.MaterialActual AS ma LEFT OUTER JOIN dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN dbo.Equipment AS e ON ea.EquipmentID = e.ID WHERE sr.ActualStartTime >= @DtBeginFull AND sr.ActualStartTime <= @DtEndFull AND sr.SegmentState = @SegmentState) CPSetc ON CPSetc.IDeq = 10113 AND t.dtStart=CPSetc.dtStart
LEFT JOIN (SELECT NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, e.Description FROM dbo.SegmentResponse AS sr INNER JOIN dbo.MaterialActual AS ma LEFT OUTER JOIN dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN dbo.Equipment AS e ON ea.EquipmentID = e.ID WHERE sr.ActualStartTime >= @DtBeginFull AND sr.ActualStartTime <= @DtEndFull AND sr.SegmentState = @SegmentState) DP9etc ON DP9etc.IDeq = 10117 AND t.dtStart = DP9etc.dtStart
LEFT JOIN (SELECT NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, e.Description FROM dbo.SegmentResponse AS sr INNER JOIN dbo.MaterialActual AS ma LEFT OUTER JOIN dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN dbo.Equipment AS e ON ea.EquipmentID = e.ID WHERE sr.ActualStartTime >= @DtBeginFull AND sr.ActualStartTime <= @DtEndFull AND sr.SegmentState = @SegmentState) SPC1etc ON SPC1etc.IDeq = 10121 AND t.dtStart = SPC1etc.dtStart

--WHERE t.dtEnd BETWEEN '2017-01-05 09:00' AND '2017-01-05 15:59'
--WHERE t.dtEnd BETWEEN (select convert(datetime,convert(varchar(11),@DtBegin,120)+'19:00',120))
--AND (select convert(datetime,convert(varchar(11),@DtEnd,120)+'18:59',120))
GROUP BY  
	t.dtStart,
	CPSetc.FE,
	DP9etc.FE,
	SPC1etc.FE

ORDER BY t.dtStart