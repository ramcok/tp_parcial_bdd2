-- llamado rendicion por dia
CALL rendicion_hs_dia(2,3,7,'2021-03-12');
SELECT* FROM asignacion_hs

-- llamado rendicion por semana
CALL rendicion_hs_semana (1,2,50,50,50,50,50,'2021-04-15')
SELECT* FROM asignacion_hs

-- llamado liquidacion mensual
CALL liquidacion_mesual;
SELECT*FROM liquidacion_hs;