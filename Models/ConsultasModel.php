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





	}
 ?>