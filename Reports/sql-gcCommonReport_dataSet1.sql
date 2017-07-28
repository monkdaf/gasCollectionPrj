--DECLARE @DtBegin datetime = '2016-02-20';
--DECLARE @DtEnd datetime = '2017-03-21';
--DECLARE @sensor_name int = 10010;

DECLARE @DtBeginFull datetime = @DtBegin+' 19:00';
DECLARE @DtEndFull datetime = @DtEnd+' 18:59';

--DECLARE @SegmentState int = 1;

SELECT 
	s.dtStart AS dtStart,
	--s.dtEnd AS dtEnd,
	s.FE AS FE,
	s.TE AS TE,
	s.PE AS PE,
    s.QE AS QE,
    --s.type AS type,
    s.IDeq AS IDeq,
    s.Description AS Description
  FROM (SELECT NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, e.Description FROM dbo.SegmentResponse AS sr INNER JOIN dbo.MaterialActual AS ma LEFT OUTER JOIN dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN dbo.Equipment AS e ON ea.EquipmentID = e.ID WHERE sr.ActualStartTime >= @DtBeginFull AND sr.ActualStartTime <= @DtEndFull AND sr.SegmentState = @SegmentState) s
  WHERE [IDeq] in (@sensor_name)
 --where [dtStart] between (select convert(datetime,convert(varchar(11),@DtBegin,120)+'19:00',120))
--and (select convert(datetime,convert(varchar(11),@DtEnd,120)+'18:59',120)) and [IDeq] in (@sensor_name) 

order by dtStart asc, IDeq desc