<?php 

	class Consultas extends Controllers{
		public function __construct()
		{
			parent::__construct();
			//session_start();
			//session_regenerate_id(true); //para seguridad de sesiones, el id anterior se eliminara y creara uno nuevo
			//if (empty($_SESSION['login'])) {
			//	header('location: '.base_url().'/login');
			//}
			//getPermisos(3); //tiene parametro 2 porque es el de usuario, osea que lo estamos poniendo junto, ya que si tiene acceso a usuario tiene a roles
		}

		public function Consultas()
		{

			$data['page_id'] = 3;
			$data['page_tag'] = " ";
			$data['page_name'] = " ";
			$data['page_title'] = " ";
			$data['page_functions_js'] = "functions_roles.js";
			$this->views->getView($this,"consulyreport",$data);
		}


		public function Discapacidad()
		{

			$data['page_id'] = 3;
			$data['page_tag'] = "Discapacidades";
			$data['page_name'] = "Discapacidades";
			$data['page_title'] = "Discapacidades";
			$data['page_functions_js'] = "functions_discapacidad.js";
			$this->views->getView($this,"discapacidad",$data);
		}

		public function Discapacidadconp()
		{

			$data['page_id'] = 3;
			$data['page_tag'] = "Discapacidades";
			$data['page_name'] = "Discapacidades";
			$data['page_title'] = "Discapacidades con Parametros";
			$data['page_functions_js'] = "functions_discapacidadconp.js";
			$this->views->getView($this,"discapacidadconp",$data);
		}

		public function Discapacidadcopia()
		{

			$data['page_id'] = 3;
			$data['page_tag'] = "Discapacidadescopia";
			$data['page_name'] = "Discapacidades";
			$data['page_title'] = "Discapacidadcopia";
			$data['page_functions_js'] = "functions_discapacidadcopia.js";
			$this->views->getView($this,"discapacidadcopia",$data);
		}

		public function AgentesAntiguosNuevos()
		{

			$data['page_id'] = 3;
			$data['page_tag'] = "AgentesSegunPromoción";
			$data['page_name'] = "Agentes por año de promoción";
			$data['page_title'] = "Agentes por año de promoción";
			$data['page_functions_js'] = "functions_agentesnuevosyantiguos.js";
			$this->views->getView($this,"agentesnuevosyantiguos",$data);
		}


		public function getTipoDiscapacidad() 
		{
			$htmlProvee = "";

			$arrDataProvee = $this->model->selectProveedores();
			$htmlProvee .= "<option value='-1'>Seleccione</option>";
			if(count($arrDataProvee) > 0 ){
				for ($i=0; $i < count($arrDataProvee); $i++) { 
					
					$htmlProvee .= '<option value="'.$arrDataProvee[$i]['iddiscapacidad'].'">'.$arrDataProvee[$i]['tipo_discapacidad'].'</option>';
					

				}
			}


			$arrResponse = array('proveedores' => $htmlProvee);
			echo json_encode($arrResponse,JSON_UNESCAPED_UNICODE);
			die();		
		}


		public function getDiscapacidadescount()
		{
                
			$nombres = array();
			$cantidad = array();
				$arrData = $this->model->selectDiscapacidadcount();
				
				for ($i=0; $i < count($arrData); $i++) {
					array_push($nombres,$arrData[$i]['tipo_discapacidad']);
					array_push($cantidad,intval($arrData[$i]['cantidad']));
				}
				$arrayDatos = array('nombres' => $nombres,'cantidad' => $cantidad);
			echo json_encode($arrayDatos,JSON_UNESCAPED_UNICODE);
	
			die();
		}

		public function selectAgentesPromocioncount1()
		{
                
			$nombres = array();
			$cantidad = array();
				$arrData = $this->model->selectAgentesPromocioncount();
				
				for ($i=0; $i < count($arrData); $i++) {
					array_push($nombres,$arrData[$i]['año_promocion']);
					array_push($cantidad,intval($arrData[$i]['cantidad_agentes']));
				}
				$arrayDatos = array('nombres' => $nombres,'cantidad' => $cantidad);
			echo json_encode($arrayDatos,JSON_UNESCAPED_UNICODE);
	
			die();
		}


		public function getDiscapacidades()
		{

				$arrData = $this->model->selectDiscapacidad();
				$htmlDatosTabla = "";
				for ($i=0; $i < count($arrData); $i++) {
					$btnView = "";


						$btnView = '<button class="btn btn-warning btn-sm btnPermisosRol" onClick="fntPermisos('.$arrData[$i]['id_oni'].')" title="Permisos"><i class="fas fa-eye"></i></button>';

					$arrData[$i]['opciones'] = '<div class="text-center">'.$btnView.' </div>';

				
					$htmlDatosTabla.='<tr>
					<td>'.$arrData[$i]['id_oni'].'</td>
					<td>'.$arrData[$i]['nombre'].'</td>
					<td>'.$arrData[$i]['apellido'].'</td>
					<td>'.$arrData[$i]['tipo_discapacidad'].'</td>
					<td>'.$arrData[$i]['opciones'].'</td>
				 </tr>';

				}
				$arrayDatos = array('datosIndividuales' => $arrData,'htmlDatosTabla' => $htmlDatosTabla);
			echo json_encode($arrayDatos,JSON_UNESCAPED_UNICODE);
	
			die();
		}

		public function getAgentesPorPromocion()
		{

				$arrData = $this->model->selectAgentesPorAñoDePromocion();
				$htmlDatosTabla = "";
				for ($i=0; $i < count($arrData); $i++) {
					$btnView = "";

				
					$htmlDatosTabla.='<tr>
					<td>'.$arrData[$i]['dui_pk'].'</td>
					<td>'.$arrData[$i]['nombre'].'</td>
					<td>'.$arrData[$i]['apellido'].'</td>
					<td>'.$arrData[$i]['sexo'].'</td>
					<td>'.$arrData[$i]['año_promocion'].'</td>
					<td>'.$arrData[$i]['edad'].'</td>
				 </tr>';

				}
				$arrayDatos = array('datosIndividuales' => $arrData,'htmlDatosTabla' => $htmlDatosTabla);
			echo json_encode($arrayDatos,JSON_UNESCAPED_UNICODE);
	
			die();
		}

		public function getDiscapacidadesconp(int $idEmpleado)
		{
			if($idEmpleado==-1){
				$arrData = $this->model->selectDiscapacidad();
				$htmlDatosTabla = "";
				for ($i=0; $i < count($arrData); $i++) {
					$btnView = "";
					$btnEdit = "";
					$btnDelete = "";

						$btnView = '<button class="btn btn-warning btn-sm btnPermisosRol" onClick="fntPermisos('.$arrData[$i]['id_oni'].')" title="Permisos"><i class="fas fa-eye"></i></button>';

					$arrData[$i]['opciones'] = '<div class="text-center">'.$btnView.' '.$btnEdit.' ' .$btnDelete.'</div>';

				
					$htmlDatosTabla.='<tr>
					<td>'.$arrData[$i]['id_oni'].'</td>
					<td>'.$arrData[$i]['nombre'].'</td>
					<td>'.$arrData[$i]['apellido'].'</td>
					<td>'.$arrData[$i]['tipo_discapacidad'].'</td>
					<td>'.$arrData[$i]['opciones'].'</td>
				 </tr>';

				}
				$arrayDatos = array('datosIndividuales' => $arrData,'htmlDatosTabla' => $htmlDatosTabla);
			echo json_encode($arrayDatos,JSON_UNESCAPED_UNICODE);
			}else{
				$arrData = $this->model->selectDiscapacidadconp($idEmpleado);

				$htmlDatosTabla = "";
				for ($i=0; $i < count($arrData); $i++) {
					$btnView = "";
					$btnEdit = "";
					$btnDelete = "";

						$btnView = '<button class="btn btn-warning btn-sm btnPermisosRol" onClick="fntPermisos('.$arrData[$i]['id_oni'].')" title="Permisos"><i class="fas fa-eye"></i></button>';

					$arrData[$i]['opciones'] = '<div class="text-center">'.$btnView.' '.$btnEdit.' ' .$btnDelete.'</div>';

				
					$htmlDatosTabla.='<tr>
					<td>'.$arrData[$i]['id_oni'].'</td>
					<td>'.$arrData[$i]['nombre'].'</td>
					<td>'.$arrData[$i]['apellido'].'</td>
					<td>'.$arrData[$i]['tipo_discapacidad'].'</td>
					<td>'.$arrData[$i]['opciones'].'</td>
				 </tr>';

				}
				$arrayDatos = array('datosIndividuales' => $arrData,'htmlDatosTabla' => $htmlDatosTabla);
			echo json_encode($arrayDatos,JSON_UNESCAPED_UNICODE);
			}

	
			die();
		}
		

		public function Permisos()
		{

			$data['page_id'] = 3;
			$data['page_tag'] = "Permisos";
			$data['page_name'] = "Permisos";
			$data['page_title'] = "Permisos";
			$data['page_functions_js'] = "functions_permisos.js";
			$this->views->getView($this,"permisos",$data);
		}

		public function getPermisos(int $tipop)
		{

				$arrData = $this->model->selectPermisos($tipop);
				$htmlDatosTabla = "";
				for ($i=0; $i < count($arrData); $i++) {
									
					$htmlDatosTabla.='<tr>
					<td>'.$arrData[$i]['num_oni'].'</td>
					<td>'.$arrData[$i]['nombre'].'</td>
					<td>'.$arrData[$i]['apellido'].'</td>
					<td>'.$arrData[$i]['rango_policia'].'</td>
					<td>'.$arrData[$i]['N_permisos'].'</td>
					<td>'.$arrData[$i]['N_permisos_disp'].'</td>'
				}
			}
			
		public function AgentesSancionesyfaltas()
		{

			$data['page_id'] = 3;
			$data['page_tag'] = "AgentesSancionesfaltas";
			$data['page_name'] = "Sanciones y faltas cometidas";
			$data['page_title'] = "Sanciones y faltas cometidas";
			$data['page_functions_js'] = "functions_agentessancionesyfaltas.js";
			$this->views->getView($this,"agentessancionesyfaltas",$data);
		}

		public function getAgentesSancionesyFaltas()
		{

				$arrData = $this->model->selectAgentesSanciones();
				$htmlDatosTabla = "";
				for ($i=0; $i < count($arrData); $i++) {
					$btnView = "";
					if($arrData[$i]['tipo_falta_cometida']== "1"){
						$arrData[$i]['tipo_falta_cometida']= "Leve";
					}
					if($arrData[$i]['tipo_falta_cometida']== "2"){
                        $arrData[$i]['tipo_falta_cometida']= "Grave";
					}
					if($arrData[$i]['tipo_falta_cometida']== "3"){
                        $arrData[$i]['tipo_falta_cometida']= "Muy grave";
					}
				
					$htmlDatosTabla.='<tr>
					<td>'.$arrData[$i]['rango_policia'].'</td>
					<td>'.$arrData[$i]['num_oni'].'</td>
					<td>'.$arrData[$i]['nombre'].'</td>
					<td>'.$arrData[$i]['apellido'].'</td>
					<td>'.$arrData[$i]['fecha_de_sansion'].'</td>
					<td>'.$arrData[$i]['tipo_falta_cometida'].'</td>
					<td>'.$arrData[$i]['falta'].'</td>
					<td>'.$arrData[$i]['sansion'].'</td>
					<td>'.$arrData[$i]['nivel_org'].'</td>
>>>>>>> 125fddd6945f0d360bf63b071552a742682f88d2
				 </tr>';

				}
				$arrayDatos = array('datosIndividuales' => $arrData,'htmlDatosTabla' => $htmlDatosTabla);
			echo json_encode($arrayDatos,JSON_UNESCAPED_UNICODE);
	
			die();
		}

		public function selectAgentesSancionescount1()
		{
                
			$nombres = array();
			$cantidad = array();
				$arrData = $this->model->selectSancionesVecesAplicadas();
				
				for ($i=0; $i < count($arrData); $i++) {
					array_push($nombres,$arrData[$i]['sansion']);
					array_push($cantidad,intval($arrData[$i]['veces_aplicada']));
				}
				$arrayDatos = array('nombres' => $nombres,'cantidad' => $cantidad);
			echo json_encode($arrayDatos,JSON_UNESCAPED_UNICODE);
	
			die();
		}
	}
 ?>