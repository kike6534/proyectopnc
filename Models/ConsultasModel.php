<?php

class ConsultasModel extends Mysql
{
	public $intIdrol;
	public $strRol;
	public $strDescripcion;
	public $intestado;

	public function __construct()
	{
		parent::__construct();
	}

	public function selectDiscapacidad()
	{

		$sql = "Select o.num_oni,d.nombre,d.apellido,disc.tipo_discapacidad from tbl_datos_personales d inner join tbl_oni_policial o on o.fk_dui_policial=d.dui_pk inner join tbl_detallediscapacidad dis on d.dui_pk=dis.duiagente inner join tbl_discapacidad disc on disc.iddiscapacidad=dis.iddiscapacidad";
		$request = $this->select_all($sql);
		return $request;
	}

	public function selectlicenciasporvencer() //consulta de DJ17002
	{

		$sql = "select dp.nombre,dp.apellido,lc.numero_licencia,lc.tipo_licencia,lc.fecha_renovacion
					from tbl_datos_personales dp  
					inner join tbl_licencia_conducir lc on lc.fk_dui_policial=dp.dui_pk and GETDATE()>=DATEADD(M,-3,lc.fecha_renovacion)";
		$request = $this->select_all($sql);
		return $request;
	}

	public function selectDiscapacidadcount()
	{
		$sql = "Select disc.tipo_discapacidad,COUNT(disc.tipo_discapacidad) as cantidad from tbl_datos_personales d inner join tbl_oni_policial o on o.fk_dui_policial=d.dui_pk inner join tbl_detallediscapacidad dis on d.dui_pk=dis.duiagente inner join tbl_discapacidad disc on disc.iddiscapacidad=dis.iddiscapacidad GROUP BY disc.tipo_discapacidad";
		$request = $this->select_all($sql);
		return $request;
	}

	public function selectAgentesPromocioncount()
	{
		$sql = "SELECT YEAR(tbl_promocion.anio_promocion) as año_promocion,
			COUNT(YEAR(tbl_promocion.anio_promocion)) as cantidad_agentes
			FROM tbl_datos_personales
			INNER JOIN tbl_movimi_promo ON tbl_datos_personales.dui_pk = tbl_movimi_promo.fk_dui_policial
			INNER JOIN tbl_promocion ON tbl_movimi_promo.fk_id_promocion = tbl_promocion.id_promocion
			GROUP BY tbl_promocion.anio_promocion";
		$request = $this->select_all($sql);
		return $request;
	}

	public function selectDiscapacidadconp(string $tipo)
	{
		$this->intIdtipo = $tipo;
		$sql = "SELECT o.id_oni,d.nombre,d.apellido,disc.tipo_discapacidad from tbl_datos_personales d inner join tbl_oni_policial o on o.fk_dui_policial=d.dui_pk inner join tbl_detallediscapacidad dis on d.dui_pk=dis.duiagente inner join tbl_discapacidad disc on disc.iddiscapacidad=dis.iddiscapacidad where disc.iddiscapacidad = $this->intIdtipo";
		$request = $this->select_all($sql);
		return $request;
	}

	/* consulta 30(PM17006) */
	public function selectDiasAgentesPermisoGoceSueldo()
	{
		$sql = "SELECT r.rango_policia, o.num_oni, CONCAT (dp.nombre,' ', dp.apellido) as nombre_completo, DATEDIFF ( dd , pgs.fecha_inicio , pgs.fecha_final ) AS dias_permiso, mp.motivos_permiso_con_goce_de_sueldo
		FROM
			dbo.tbl_datos_personales AS dp
			INNER JOIN dbo.tbl_oni_policial AS o ON dp.dui_pk = o.fk_dui_policial
			INNER JOIN dbo.tbl_permiso_con_sin_goce_sueldo AS pgs ON dp.dui_pk = pgs.fk_dui_solicitante
			INNER JOIN dbo.tbl_motivo_permiso AS mp ON pgs.id_motivo_permiso = mp.id_motivo_permiso
			INNER JOIN dbo.tbl_asig_rango ON o.num_oni = dbo.tbl_asig_rango.fk_oni_policial
			INNER JOIN dbo.tbl_rango AS r ON dbo.tbl_asig_rango.fk_rango = r.id_rango
		WHERE mp.id_motivo_permiso != 2 AND pgs.fk_tipo_permiso = 'goce de sueldo'";
		$request = $this->select_all($sql);
		return $request;
	}

	public function selectDiasAgentesPermisoGoceSueldoPermisoCompensatorio()
	{
		$sql = "SELECT r.rango_policia, o.num_oni, CONCAT (dp.nombre,' ', dp.apellido) as nombre_completo, DATEDIFF ( dd , pgs.fecha_inicio , pgs.fecha_final ) AS dias_permiso
		FROM
			dbo.tbl_datos_personales AS dp
			INNER JOIN dbo.tbl_oni_policial AS o ON dp.dui_pk = o.fk_dui_policial
			INNER JOIN dbo.tbl_permiso_con_sin_goce_sueldo AS pgs ON dp.dui_pk = pgs.fk_dui_solicitante
			INNER JOIN dbo.tbl_motivo_permiso AS mp ON pgs.id_motivo_permiso = mp.id_motivo_permiso
			INNER JOIN dbo.tbl_asig_rango ON o.num_oni = dbo.tbl_asig_rango.fk_oni_policial
			INNER JOIN dbo.tbl_rango AS r ON dbo.tbl_asig_rango.fk_rango = r.id_rango
		WHERE mp.id_motivo_permiso = 2 AND pgs.fk_tipo_permiso = 'goce de sueldo'";
		$request = $this->select_all($sql);
		return $request;
	}

	/* fin consulta 30(PM17006) */

	public function selectRol(int $idrol)
	{
		//BUSCAR ROLE
		$this->intIdrol = $idrol;
		$sql = "SELECT * FROM tbl_rol WHERE idrol = $this->intIdrol";
		$request = $this->select($sql);
		return $request;
	}


	public function selectProveedores()
	{

		$sql = "SELECT * FROM tbl_discapacidad ";
		$request = $this->select_all($sql);
		return $request;
	}

	public function selectDiscapacidadcopia(string $tipo)
	{
		$this->intIdtipo = $tipo;
		$sql = "SELECT o.id_oni,d.nombre,d.apellido,disc.tipo_discapacidad from tbl_datos_personales d inner join tbl_oni_policial o on o.fk_dui_policial=d.dui_pk inner join tbl_detallediscapacidad dis on d.dui_pk=dis.duiagente inner join tbl_discapacidad disc on disc.iddiscapacidad=dis.iddiscapacidad where disc.iddiscapacidad = $this->intIdtipo";
		$request = $this->select_all($sql);
		return $request;
	}

	public function selectPermisos(string $tipoper)
	{
		$this->intTipo = $tipoper;
		$sql = "SELECT rg.rango_policia, opol.num_oni, dp.nombre, dp.apellido, COUNT(*) as N_permisos
			from tbl_permiso_con_sin_goce_sueldo pcs
			INNER JOIN tbl_datos_personales dp on pcs.fk_dui_solicitante = dp.dui_pk
			INNER JOIN tbl_oni_policial opol on dp.dui_pk = opol.fk_dui_policial
			INNER JOIN tbl_asig_rango ran on opol.fk_dui_policial = ran.fk_oni_policial
			INNER JOIN tbl_rango rg on ran.fk_rango = rg.id_rango
			WHERE opol.num_oni = opol.num_oni and pcs.fk_tipo_permiso = $this->intTipo
			GROUP BY rg.rango_policia, opol.num_oni, dp.nombre, dp.apellido";
	}
	public function selectAgentesPorAñoDePromocion()
	{
		$sql = "SELECT tbl_datos_personales.dui_pk, tbl_datos_personales.nombre,
			tbl_datos_personales.apellido, tbl_datos_personales.sexo,
			YEAR(tbl_promocion.anio_promocion) as año_promocion, 
			DATEDIFF(YEAR,tbl_datos_personales.fecha_nacimiento,GETDATE()) as edad
			FROM tbl_datos_personales 
			INNER JOIN tbl_movimi_promo ON tbl_datos_personales.dui_pk = tbl_movimi_promo.fk_dui_policial
			INNER JOIN tbl_promocion ON tbl_movimi_promo.fk_id_promocion = tbl_promocion.id_promocion
			ORDER BY tbl_promocion.anio_promocion ASC";
		$request = $this->select_all($sql);
		return $request;
	}


	public function selectAgentesSanciones()
	{
		$sql = "SELECT tbl_rango.rango_policia, tbl_oni_policial.num_oni, tbl_datos_personales.nombre,
			tbl_datos_personales.apellido, tbl_movimi_sansiones.desde as fecha_de_sansion,
			tbl_faltas.tipo_falta_cometida, tbl_faltas.falta,
			tbl_sansiones.sansion, tbl_nilv_org.nombre as nivel_org 
			FROM tbl_datos_personales INNER JOIN tbl_oni_policial ON tbl_datos_personales.dui_pk = 
			tbl_oni_policial.fk_dui_policial
			INNER JOIN tbl_asig_rango ON tbl_oni_policial.num_oni = tbl_asig_rango.fk_oni_policial
			INNER JOIN tbl_rango ON tbl_asig_rango.fk_rango = tbl_rango.id_rango
			INNER JOIN tbl_asig_pol_puesto ON tbl_oni_policial.num_oni = tbl_asig_pol_puesto.fk_oni_pol
			INNER JOIN tbl_nivel_puest ON tbl_asig_pol_puesto.fk_id_nivel_org_puest = tbl_nivel_puest.idNivelOrgPuesto
			INNER JOIN tbl_nilv_org ON tbl_nivel_puest.idNivelOrg = tbl_nilv_org.idNivelOrg
			INNER JOIN tbl_movimi_sansiones ON tbl_datos_personales.dui_pk = tbl_movimi_sansiones.fk_dui_policial
			INNER JOIN tbl_sansiones ON tbl_movimi_sansiones.fk_id_sansion = tbl_sansiones.id_sansiones
			INNER JOIN tbl_faltas ON tbl_sansiones.fk_id_faltas = tbl_faltas.id_faltas
			ORDER BY tbl_oni_policial.num_oni ASC";
		$request = $this->select_all($sql);
		return $request;
	}


	public function selectSancionesVecesAplicadas()
	{
		$sql = "SELECT tbl_sansiones.sansion, COUNT(tbl_movimi_sansiones.fk_id_sansion) as veces_aplicada
			FROM tbl_sansiones INNER JOIN tbl_movimi_sansiones ON 
			tbl_sansiones.id_sansiones = tbl_movimi_sansiones.fk_id_sansion
			GROUP BY tbl_sansiones.sansion";
		$request = $this->select_all($sql);
		return $request;
	}
	public function selectVehiculosDescargo()
	{

		$sql = "SELECT
			dbo.tbl_vehiculo.placa,
			dbo.tbl_vehiculo.legalidad_vehiculo,
			dbo.tbl_vehiculo.funcion,
			dbo.tbl_vehiculo.anioVehiculo
			
			FROM
			dbo.tbl_vehiculo
			INNER JOIN dbo.tbl_detalle_estado ON dbo.tbl_detalle_estado.fk_numeroEquipo = dbo.tbl_vehiculo.numero_equipo
			INNER JOIN dbo.tblo_estado_vehiculo ON dbo.tbl_detalle_estado.fk_EstadoVehiculo = dbo.tblo_estado_vehiculo.idEstadoVehiculo
			WHERE
			dbo.tblo_estado_vehiculo.nombreEstado = 'EN PROCESO DE DESCARGO'";
		$request = $this->select_all($sql);
		return $request;
	}


	public function selectEnfermedad()
	{

		$sql = "SELECT dp.dui_pk as dui_pk, me.fecha_deteccion as fecha_deteccion,
dp.nombre as nombre, dp.apellido as apellido, me.enfermedad_vigente as enfermedad_vigente, dp.sexo as sexo,
dp.estatura as estatura, dp.peso as peso, 
e.nombre_enfermedad as nombre_enfermedad, e.tipo as tipo
 FROM tbl_movi_enfermedad as me INNER JOIN tbl_datos_personales as dp ON me.fk_dui_policial = dp.dui_pk 
INNER JOIN tbl_enfermedades as e ON me.fk_id_enfermedad = e.id_enfermedad";
		$request = $this->select_all($sql);
		return $request;
	}
	public function selectEnfermedadconp(string $fecha)
	{
		//$this->intIdfecha = $fecha;
		//$this->intIdfecha1 = $fecha1;
		$fechaini = substr($fecha, 0, 9);
		$fechafin = substr($fecha, 11, 20);
		$sql = "SELECT dp.dui_pk as dui_pk, me.fecha_deteccion as fecha_deteccion,
dp.nombre as nombre, dp.apellido as apellido, me.enfermedad_vigente as enfermedad_vigente, dp.sexo as sexo,
dp.estatura as estatura, dp.peso as peso, 
e.nombre_enfermedad as nombre_enfermedad, e.tipo as tipo
 FROM tbl_movi_enfermedad as me INNER JOIN tbl_datos_personales as dp ON me.fk_dui_policial = dp.dui_pk 
INNER JOIN tbl_enfermedades as e ON me.fk_id_enfermedad = e.id_enfermedad 
WHERE me.fecha_deteccion >= '$fechaini' AND me.fecha_deteccion <= '$fechafin'";
		$request = $this->select_all($sql);
		return $request;
	}

	public function selectEnfermedadcount()
	{
		$sql = "SELECT me.enfermedad_vigente as enfermedad_vigente, COUNT(me.enfermedad_vigente) as cantidad
FROM tbl_movi_enfermedad as me INNER JOIN tbl_datos_personales as dp ON me.fk_dui_policial = dp.dui_pk 
INNER JOIN tbl_enfermedades as e ON me.fk_id_enfermedad = e.id_enfermedad
GROUP BY me.enfermedad_vigente";
		$request = $this->select_all($sql);
		return $request;
	}


	public function selectNumeroTelAgentes()
	{

		$sql = "SELECT a.dui_pk, a.nombre, a.apellido, a.tipo_sangre, a.estado_civil, b.numero_telefono, b.tipo, c.num_oni, c.estado FROM tbl_datos_personales AS a INNER JOIN tbl_telefono AS b ON a.dui_pk = b.fk_dui_policial INNER JOIN dbo.tbl_oni_policial AS c ON  a.dui_pk = c.fk_dui_policial WHERE c.estado = '1'";
		$request = $this->select_all($sql);
		return $request;
	}


	public function selectAgentes()
	{

		$sql = "SELECT dui_pk, num_oni, CONCAT(dps.nombre, ' ', dps.apellido) as 'agente' from tbl_datos_personales dps inner join tbl_oni_policial op on dps.dui_pk = op.fk_dui_policial";
		$request = $this->select_all($sql);
		return $request;
	}

	public function selectCantidadPermisosAgentes(string $agente, string $mes)
	{

		$sql = "SELECT fecha_inicio, fecha_final, DATEDIFF (DAY,fecha_inicio, fecha_final) as 'tiempo_restante' ,mtp.motivos_permiso_con_goce_de_sueldo as 'tipo_motivo', motivo from tbl_permiso_con_sin_goce_sueldo pcss  join tbl_datos_personales dps on pcss.fk_dui_solicitante = dps.dui_pk inner join tbl_motivo_permiso mtp on pcss.id_motivo_permiso = mtp.id_motivo_permiso where dps.dui_pk = '" . $agente . "' and MONTH(fecha_inicio) = " . $mes;

		$request = $this->select_all($sql);
		return $request;
	}

	public function selectEspecialidadagente()
	{
		//LH15014 WILLIAM FERNANDO
		$sql = "SELECT
			num_oni,
			nombre,
			apellido,
			STUFF(
			(
			SELECT
			tbl_especialidades.especialidad + ', ' 
			FROM
			dbo.tbl_movi_especialidad
			INNER JOIN dbo.tbl_especialidades ON tbl_movi_especialidad.fk_id_especialidad = tbl_especialidades.id_especialidad 
			WHERE
			fk_dui_policia = a.dui_pk FOR XML PATH ( '' ) 
			),
			1,
			0,
			'' 
			) AS especialidades 
			FROM
			tbl_datos_personales AS a
			INNER JOIN dbo.tbl_oni_policial AS onis ON a.dui_pk = onis.fk_dui_policial 
			WHERE EXISTS(SELECT * FROM tbl_movi_especialidad WHERE tbl_movi_especialidad.fk_dui_policia = a.dui_pk)
			GROUP BY
			dui_pk,
			num_oni,
			nombre,
			apellido";
		$request = $this->select_all($sql);
		return $request;
	}

	public function selectllamadaemergencia()
	{
		//Marta Gloria Campos
		$sql = "SELECT
			op.num_oni, 
			concat(dp.nombre,' ',dp.apellido) AS nombreagente, 
			dp.tipo_sangre, 
			concat(fm.nombre,' ',fm.apellido) AS nombrefamiliar, 
			fm.telefono
			FROM dbo.tbl_datos_personales AS dp 
			INNER JOIN dbo.tbl_familiares AS fm ON dp.dui_pk = fm.fk_dui_policial
			INNER JOIN dbo.tbl_oni_policial AS op ON dp.dui_pk = op.fk_dui_policial";
		$request = $this->select_all($sql);
		return $request;
	}
}
