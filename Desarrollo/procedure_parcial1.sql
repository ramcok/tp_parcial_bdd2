-- procedimiento para rendir hs por proyecto
delimiter $$
CREATE PROCEDURE rendicion_hs_dia(partic INT ,proyect INT ,horas INT,fech DATE)
BEGIN
 INSERT INTO asignacion_hs (id_part,id_proy,cant_horas,fecha) 
 VALUES (partic,proyect,horas,fech);
END;
$$

-- procedimiento para rendir hs por semana de proyecto
delimiter $$
CREATE PROCEDURE rendicion_hs_semana
(id_participante INT,id_proyecto INT,dia1 INT,dia2 INT,dia3 INT,dia4 INT,dia5 INT, fecha DATE)
 BEGIN	
	DECLARE sum_horas INT;
	SET sum_horas= dia1 + dia2 + dia3 + dia4 + dia5;
   INSERT INTO asignacion_hs(id_part, id_proy, cant_horas,fecha) VALUES(id_participante, id_proyecto, sum_horas,fecha);
 END;
$$

-- procedimiento para liquidar protecto
delimiter $$
CREATE PROCEDURE liquidacion_mesual()
BEGIN
	INSERT INTO liquidacion_hs(id_proy,cant_hs_totales) 
	SELECT id_proy 'Proyecto',sum(cant_horas)'Total Hora'
	FROM asignacion_hs
	GROUP BY id_proy;
END;
$$


