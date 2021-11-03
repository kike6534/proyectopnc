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

	}
 ?>