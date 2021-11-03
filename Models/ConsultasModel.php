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

			$sql = "Select o.id_oni,d.nombre,d.apellido,disc.tipo_discapacidad from tbl_datos_personales d inner join tbl_oni_policial o on o.fk_dui_policial=d.dui_pk inner join tbl_detallediscapacidad dis on d.dui_pk=dis.duiagente inner join tbl_discapacidad disc on disc.iddiscapacidad=dis.iddiscapacidad";
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

		public function selectPoliciasRenuncia()
		{
			$sql = "SELECT ra.rango_policia as rango, op.num_oni as oni, dp.nombre, 
			dp.apellido, CONVERT(varchar,pt.fecha_carrera_policial_terminada,101) as fecha, pt.causa
			from tbl_datos_personales as dp 
			inner join tbl_carrera_policial_terminada as pt on dp.dui_pk = pt.fk_dui_policial
			inner join tbl_oni_policial as op on dp.dui_pk = op.fk_dui_policial
			inner join tbl_asig_rango ar on op.num_oni = ar.fk_oni_policial
			inner join tbl_rango ra on ar.fk_rango = ra.id_rango";
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

	}
 ?>