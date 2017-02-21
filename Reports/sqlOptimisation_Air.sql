
SELECT 
	t.dtStart,
	CPSetc.FE as CPSetc, --FE2.1
	DP9etc.FE as DP9etc, --FE2.2
	SPC1etc.FE as SPC1etc  --FE2.3
FROM (SELECT        NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, 
                         e.Description
FROM            dbo.SegmentResponse AS sr INNER JOIN
                         dbo.MaterialActual AS ma LEFT OUTER JOIN
                         dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN
                         dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN
                         dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN
                         dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN
                         dbo.Equipment AS e ON ea.EquipmentID = e.ID
WHERE sr.ActualStartTime >= '2017-02-07 19:00:00' AND sr.ActualStartTime <= '2017-02-08 18:59:00') t
LEFT JOIN (SELECT        NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, 
                         e.Description
FROM            dbo.SegmentResponse AS sr INNER JOIN
                         dbo.MaterialActual AS ma LEFT OUTER JOIN
                         dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN
                         dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN
                         dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN
                         dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN
                         dbo.Equipment AS e ON ea.EquipmentID = e.ID
WHERE sr.ActualStartTime >= '2017-02-07 19:00:00' AND sr.ActualStartTime <= '2017-02-08 18:59:00') CPSetc ON CPSetc.IDeq = 10113 AND t.dtStart=CPSetc.dtStart
LEFT JOIN (SELECT        NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, 
                         e.Description
FROM            dbo.SegmentResponse AS sr INNER JOIN
                         dbo.MaterialActual AS ma LEFT OUTER JOIN
                         dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN
                         dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN
                         dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN
                         dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN
                         dbo.Equipment AS e ON ea.EquipmentID = e.ID
WHERE sr.ActualStartTime >= '2017-02-07 19:00:00' AND sr.ActualStartTime <= '2017-02-08 18:59:00') DP9etc ON DP9etc.IDeq = 10117 AND t.dtStart = DP9etc.dtStart
LEFT JOIN (SELECT        NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, 
                         e.Description
FROM            dbo.SegmentResponse AS sr INNER JOIN
                         dbo.MaterialActual AS ma LEFT OUTER JOIN
                         dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN
                         dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN
                         dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN
                         dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN
                         dbo.Equipment AS e ON ea.EquipmentID = e.ID
WHERE sr.ActualStartTime >= '2017-02-07 19:00:00' AND sr.ActualStartTime <= '2017-02-08 18:59:00') SPC1etc ON SPC1etc.IDeq = 10121 AND t.dtStart = SPC1etc.dtStart

--WHERE t.dtEnd BETWEEN '2017-01set -07 19:00:00' AND '2017-02-08 18:59:00'
--WHERE t.dtEnd BETWEEN (select convert(datetime,convert(varchar(11),@DtBegin,120)+'19:00',120))
--AND (select convert(datetime,convert(varchar(11),@DtEnd,120)+'18:59',120))
GROUP BY  
	t.dtStart,
	CPSetc.FE,
	DP9etc.FE,
	SPC1etc.FE

ORDER BY t.dtStart 