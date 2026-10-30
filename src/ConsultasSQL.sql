--CONSULTAS

1. Consultar cuantas solicitudes ha recibido cada funcinario, la consulta debe listar documento y nombre del funcionario, tipo solicitud.
2. Cuantas solicitudes de PQRS se han recibido en total por tipo solicitud.
3. Cuantas solicitudes se recibieron en el ultimo mes.
4. Cuantas solicitudes se recibieron en el último trimestre.
5. Cual es el promedio mensual de solicitudes recibidas por tipo solicitud.
6. Cuantas solicitudes se encuentran en estado RECIBIDO, por tipo solicitud.
7. Cuantas PQRS han sido resueltas por mes.
8. Cuantas PQRS estan pendientes de tramitar.
9. Cual es la cantidad de solicitudes por cada estado.
10. Cual funcionario tiene el mayor número de solicitudes asignadas.
11. Cuantas solicitudes tiene asignadas cada funcionario.
12. Cual funcionario tiene el menor número de solicitudes asignadas.
13. Cual funcionario tiene mas solicitudes resultas.
14. Qué ciudadano presenta la mayor cantidad de solicitudes registradas.
15. Cual es el porcentaje de resolución de cada funcionario de las Quejas y Sugerencia.
16 Cuantas solicitudes se recibieron este mes en comparación con el mes anterior.
17. Cual fue el mes con menor número de solicitudes.
18. Cual es el tipo solicitud con mayo solicitud.

1. Consultar cuantas solicitudes ha recibido cada funcinario, la consulta debe listar documento y nombre del funcionario, tipo solicitud.

SELECT 
	usua.USUA_DNI documento, 
	usua.USUA_NOMBRE nombre, 
	tiso.TISO_NOMBRE solicitud, 
	COUNT(1) total
FROM 
	ADMINISTRADOR.PQRS pqrs
	INNER JOIN ADMINISTRADOR.USUARIOS usua ON pqrs.USUA_FUNCIONARIOID = usua.USUA_ID
	INNER JOIN ADMINISTRADOR.TIPOSOLICITUD tiso ON pqrs.TISO_ID = tiso.TISO_ID
GROUP BY
	usua.USUA_DNI, usua.USUA_NOMBRE, tiso.TISO_NOMBRE
ORDER BY
    usua.USUA_NOMBRE;
