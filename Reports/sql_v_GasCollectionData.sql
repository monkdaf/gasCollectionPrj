SELECT        NEWID() AS ID, sr.ActualStartTime AS dtStart, sr.ActualEndTime AS dtEnd, ma.Quantity AS FE, map.Quantity AS TE, mape.Quantity AS PE, mapq.Quantity AS QE, sr.SegmentState AS type, e.ID AS IDeq, 
                         e.Description
FROM            dbo.SegmentResponse AS sr INNER JOIN
                         dbo.MaterialActual AS ma LEFT OUTER JOIN
                         dbo.MaterialActualProperty AS map ON ma.ID = map.MaterialActual AND map.Description = 'TE' LEFT OUTER JOIN
                         dbo.MaterialActualProperty AS mape ON ma.ID = mape.MaterialActual AND mape.Description = 'PE' LEFT OUTER JOIN
                         dbo.MaterialActualProperty AS mapq ON ma.ID = mapq.MaterialActual AND mapq.Description = 'QE' ON sr.ID = ma.SegmentResponseID INNER JOIN
                         dbo.EquipmentActual AS ea ON sr.ID = ea.SegmentResponseID INNER JOIN
                         dbo.Equipment AS e ON ea.EquipmentID = e.ID