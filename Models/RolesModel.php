<?php 

	class RolesModel extends Mysql
	{
		public $intIdrol;
		public $strRol;
		public $strDescripcion;
		public $intestado;

		public function __construct()
		{
			parent::__construct();
		}

		public function selectRoles()
		{
			//EXTRAE ROLES
			$sql = "SELECT * FROM tbl_rol WHERE estado != 0";
			$request = $this->select_all($sql);
			return $request;
		}

		public function selectRol(int $idrol)
		{
			//BUSCAR ROLE
			$this->intIdrol = $idrol;
			$sql = "SELECT * FROM rol WHERE idrol = $this->intIdrol";
			$request = $this->select($sql);
			return $request;
		}

		public function retonrar_id_insertar1(){
			$sql = "SELECT COUNT(*) as cuantos FROM tbl_rol";
			$request = $this->select($sql);
			$id = $request["cuantos"];
			return date("Yidisus").($id+1);
		}

		public function retonrar_id_insertar(){
			$fechahoy = intval(date("Ymd")); //retorna un int de 8 carac
			$sql = "SELECT COUNT(*) AS cuantos FROM tbl_rol WHERE LEFT(idrol, 8) = '{$fechahoy}'";
			$request = $this->select($sql);
			$id = $request["cuantos"];
			return $fechahoy.($id+1);
		}

		public function insertRol(int $idrol, string $rol, string $descripcion, int $estado){

			$return = "";
			$this->intIdrol = $idrol;
			$this->strRol = $rol;
			$this->strDescripcion = $descripcion;
			$this->intestado = $estado;

			$sql = "SELECT * FROM tbl_rol WHERE nombrerol = '{$this->strRol}' ";
			$request = $this->select_all($sql);

			if(empty($request))
			{
				$query_insert  = "INSERT INTO tbl_rol(idrol,nombrerol,descripcion,estado) VALUES(?,?,?,?)";
	        	$arrData = array($this->intIdrol, $this->strRol, $this->strDescripcion, $this->intestado);
	        	$request_insert = $this->insert($query_insert,$arrData);
	        	$return = $request_insert;
			}else{
				$return = "exist";
			}
			return $return;
		}	

		public function updateRol(int $idrol, string $rol, string $descripcion, int $estado){
			$this->intIdrol = $idrol;
			$this->strRol = $rol;
			$this->strDescripcion = $descripcion;
			$this->intestado = $estado;

			$sql = "SELECT * FROM rol WHERE nombrerol = '$this->strRol' AND idrol != $this->intIdrol";
			$request = $this->select_all($sql);

			if(empty($request))
			{
				$sql = "UPDATE rol SET nombrerol = ?, descripcion = ?, estado = ? WHERE idrol = $this->intIdrol ";
				$arrData = array($this->strRol, $this->strDescripcion, $this->intestado);
				$request = $this->update($sql,$arrData);
			}else{
				$request = "exist";
			}
		    return $request;			
		}

		public function deleteRol(int $idrol)
		{
			$this->intIdrol = $idrol;
			$sql = "SELECT * FROM usuario WHERE rolid = $this->intIdrol";
			$request = $this->select_all($sql);
			if(empty($request))
			{
				$sql = "UPDATE rol SET estado = ? WHERE idrol = $this->intIdrol ";
				$arrData = array(0);
				$request = $this->update($sql,$arrData);
				if($request)
				{
					$request = 'ok';	
				}else{
					$request = 'error';
				}
			}else{
				$request = 'exist';
			}
			return $request;
		}
	}
 ?>