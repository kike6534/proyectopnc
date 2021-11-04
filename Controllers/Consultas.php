<?php

class Consultas extends Controllers
{
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
		$this->views->getView($this, "consulyreport", $data);
	}

	public function Enfermedad()
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "Enfermedades";
		$data['page_name'] = "Enfermedades";
		$data['page_title'] = "Enfermedades";
		$data['page_functions_js'] = "functions_enfermedad.js";
		$this->views->getView($this, "enfermedad", $data);
	}

	public function Enfermedadconp()
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "Enfermedades";
		$data['page_name'] = "Enfermedades";
		$data['page_title'] = "Enfermedades por Fechas";
		$data['page_functions_js'] = "functions_enfermedadconp.js";
		$this->views->getView($this, "enfermedadconp", $data);
	}

	public function Discapacidad()
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "Discapacidades";
		$data['page_name'] = "Discapacidades";
		$data['page_title'] = "Discapacidades";
		$data['page_functions_js'] = "functions_discapacidad.js";
		$this->views->getView($this, "discapacidad", $data);
	}
	public function VehiculoDescargo()
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "Vehiculos en proceso de Descargo";
		$data['page_name'] = "Vehiculos en proceso de Descargo";
		$data['page_title'] = "Vehiculos en proceso de Descargo";
		$data['page_functions_js'] = "functions_Vehiculodescargo.js";
		$this->views->getView($this, "vehiculoDescargo", $data);
	}

	public function licenciasPorvencer() //CODIGO  DJ17002
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "Discapacidades";
		$data['page_name'] = "Discapacidades";
		$data['page_title'] = "Licencias de conducir que estan proximos a vencer";
		$data['page_functions_js'] = "functions_licenciaporvencer.js";
		$this->views->getView($this, "licenciasporvencer", $data);
	}

	public function Discapacidadconp()
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "Discapacidades";
		$data['page_name'] = "Discapacidades";
		$data['page_title'] = "Discapacidades con Parametros";
		$data['page_functions_js'] = "functions_discapacidadconp.js";
		$this->views->getView($this, "discapacidadconp", $data);
	}

	public function Discapacidadcopia()
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "Discapacidadescopia";
		$data['page_name'] = "Discapacidades";
		$data['page_title'] = "Discapacidadcopia";
		$data['page_functions_js'] = "functions_discapacidadcopia.js";
		$this->views->getView($this, "discapacidadcopia", $data);
	}

	public function AgentesAntiguosNuevos()
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "AgentesSegunPromoción";
		$data['page_name'] = "Agentes por año de promoción";
		$data['page_title'] = "Agentes por año de promoción";
		$data['page_functions_js'] = "functions_agentesnuevosyantiguos.js";
		$this->views->getView($this, "agentesnuevosyantiguos", $data);
	}

	public function numeroTelefonoAgentes()
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "NumeroTelefonicos";
		$data['page_name'] = "Discapacidades";
		$data['page_title'] = "Números Telefónicos de Agentes.";
		$data['page_functions_js'] = "functions_numerostelpoliciales.js";
		$this->views->getView($this, "numerosdetelefonospoliciales", $data);
	}

	public function CantidadPermisosAgentes()
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "Cantidad de permisos de agentes";
		$data['page_name'] = "Discapacidades";
		$data['page_title'] = "Cantidad de permisos de agentes.";
		$data['page_functions_js'] = "functions_cantidad_permisos_agentes.js";
		$this->views->getView($this, "cantidadpermisosagentes", $data);
	}

	public function getAgentes()
	{
		$htmlProvee = "";

		$arrDataProvee = $this->model->selectAgentes();
		$htmlProvee .= "<option value='-1'>Seleccione un agente</option>";
		if (count($arrDataProvee) > 0) {
			for ($i = 0; $i < count($arrDataProvee); $i++) {

				$htmlProvee .= '<option value="' . $arrDataProvee[$i]['dui_pk'] . '">' . $arrDataProvee[$i]['num_oni'] . ' ' . $arrDataProvee[$i]['agente'] . '</option>';
			}
		}


		$arrResponse = array('agentes' => $htmlProvee);
		echo json_encode($arrResponse, JSON_UNESCAPED_UNICODE);
		die();
	}

	public function getPermisosPorAgentes(string $agente)
	{

		$arrData = $this->model->selectCantidadPermisosAgentes($agente, $_POST["mes"]);
		$htmlDatosTabla = "";
		for ($i = 0; $i < count($arrData); $i++) {

			$fecha1 = new DateTime($arrData[$i]['fecha_inicio']);
			$fecha2 = new DateTime($arrData[$i]['fecha_final']);



			$htmlDatosTabla .= '<tr>
					<td>' . $fecha1->format('d-M-Y h:i A') . '</td>
					<td>' . $fecha2->format('d-M-Y h:i A') . '</td>
					<td>' . $arrData[$i]['tiempo_restante'] . ' dias</td>
					<td align="center">' . $arrData[$i]['tipo_motivo'] . '</td>
					<td>' . $arrData[$i]['motivo'] . '</td>
				 </tr>';
		}

		if (sizeof($arrData) === 0) {
			$htmlDatosTabla = '<tr class="odd"><td valign="top" colspan="5" class="dataTables_empty">Ningún dato disponible en esta tabla</td></tr>';
		}

		$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla, "cantidad" => sizeof($arrData));
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}

	/* consulta 30(PM17006) */
	public function diasPermisoGoceSueldo()
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "dias con permiso de goce de sueldo";
		$data['page_name'] = "dias de licencia con goce de sueldo";
		$data['page_title'] = "Cantidad de días que los agentes han tenido permiso con goce de sueldo y cuál ha sido el motivo (omitiendo los permisos compensatorios)";
		$data['page_functions_js'] = "functions_cdiasgsueldo.js";
		$this->views->getView($this, "diasagentesconpermisogocesueldo", $data);
	}
	public function diasPermisoGoceSueldoPC()
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "dias con permiso de goce de sueldo compensatorio";
		$data['page_name'] = "dias de licencia con goce de sueldo compensatorio";
		$data['page_title'] = "Cantidad de días que los agentes han tenido permiso con goce de sueldo con permisos compensatorios";
		$data['page_functions_js'] = "functions_cdiasgsueldopc.js";
		$this->views->getView($this, "diasagentesconpermisogocesueldopc", $data);
	}

	/* fin consulta 30(PM17006) */

	public function getNumeroTelefonoAgentes()
	{

		$arrData = $this->model->selectNumeroTelAgentes();
		$htmlDatosTabla = "";
		for ($i = 0; $i < count($arrData); $i++) {
			$btnView = "";


			$htmlDatosTabla .= '<tr>
					<td>' . $arrData[$i]['dui_pk'] . '</td>
					<td>' . $arrData[$i]['nombre'] . " " . $arrData[$i]['apellido'] . '</td>
					<td>' . $arrData[$i]['estado_civil'] . '</td>
					<td align="center">' . $arrData[$i]['tipo_sangre'] . '</td>
					<td>' . $arrData[$i]['numero_telefono'] . '</td>
					<td>' . $arrData[$i]['tipo'] . '</td>
				 </tr>';
		}
		$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}





	public function agentesEspecialidad()
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "AgenteEspecialidades";
		$data['page_name'] = "Discapacidades";
		$data['page_title'] = "Especialides de Agentes.";
		$data['page_functions_js'] = "functions_agentesconespecialidad.js";
		$this->views->getView($this, "agentesconespecialidad", $data);
	}


	public function getAgentesConEspecialidad()
	{

		$arrData = $this->model->selectAgentesConEspecialidad();
		$htmlDatosTabla = "";
		for ($i = 0; $i < count($arrData); $i++) {
			$btnView = "";


			$htmlDatosTabla .= '<tr>
						<td>' . $arrData[$i]['num_oni'] . '</td>
						<td>' . $arrData[$i]['rango_policia'] . '</td>
						<td>' . $arrData[$i]['nombre'] . " " . $arrData[$i]['apellido'] . '</td>
						<td>' . $arrData[$i]['especialidad'] . '</td>
						 </tr>';
		}
		$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}

	public function getTipoDiscapacidad()
	{
		$htmlProvee = "";

		$arrDataProvee = $this->model->selectProveedores();
		$htmlProvee .= "<option value='-1'>Seleccione</option>";
		if (count($arrDataProvee) > 0) {
			for ($i = 0; $i < count($arrDataProvee); $i++) {

				$htmlProvee .= '<option value="' . $arrDataProvee[$i]['iddiscapacidad'] . '">' . $arrDataProvee[$i]['tipo_discapacidad'] . '</option>';
			}
		}


		$arrResponse = array('proveedores' => $htmlProvee);
		echo json_encode($arrResponse, JSON_UNESCAPED_UNICODE);
		die();
	}


	public function getDiscapacidadescount()
	{

		$nombres = array();
		$cantidad = array();
		$arrData = $this->model->selectDiscapacidadcount();

		for ($i = 0; $i < count($arrData); $i++) {
			array_push($nombres, $arrData[$i]['tipo_discapacidad']);
			array_push($cantidad, intval($arrData[$i]['cantidad']));
		}
		$arrayDatos = array('nombres' => $nombres, 'cantidad' => $cantidad);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}

	public function selectAgentesPromocioncount1()
	{

		$nombres = array();
		$cantidad = array();
		$arrData = $this->model->selectAgentesPromocioncount();

		for ($i = 0; $i < count($arrData); $i++) {
			array_push($nombres, $arrData[$i]['año_promocion']);
			array_push($cantidad, intval($arrData[$i]['cantidad_agentes']));
		}
		$arrayDatos = array('nombres' => $nombres, 'cantidad' => $cantidad);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}


	public function EspecialidadAgente()
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "Especialidades";
		$data['page_name'] = "Especialidades";
		$data['page_title'] = "Especialidades de agentes";
		$data['page_functions_js'] = "functions_especialidadagente.js";
		$this->views->getView($this, "especialidadagente", $data);
	}

	public function getEspecialidadAgente()
	{

		$arrData = $this->model->selectEspecialidadAgente();
		$htmlDatosTabla = "";
		for ($i = 0; $i < count($arrData); $i++) {
			$btnView = "";


			$htmlDatosTabla .= '<tr>
					<td>' . $arrData[$i]['num_oni'] . '</td>
					<td>' . $arrData[$i]['nombre'] . '</td>
					<td>' . $arrData[$i]['apellido'] . '</td>
					<td>' . $arrData[$i]['especialidades'] . '</td>
					
				 </tr>';
		}
		$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}

	public function getDiscapacidades()
	{

		$arrData = $this->model->selectDiscapacidad();
		$htmlDatosTabla = "";
		for ($i = 0; $i < count($arrData); $i++) {
			$btnView = "";


			$btnView = '<button class="btn btn-warning btn-sm btnPermisosRol" onClick="fntPermisos(' . $arrData[$i]['num_oni'] . ')" title="Permisos"><i class="fas fa-eye"></i></button>';

			$arrData[$i]['opciones'] = '<div class="text-center">' . $btnView . ' </div>';


			$htmlDatosTabla .= '<tr>
					<td>' . $arrData[$i]['num_oni'] . '</td>
					<td>' . $arrData[$i]['nombre'] . '</td>
					<td>' . $arrData[$i]['apellido'] . '</td>
					<td>' . $arrData[$i]['tipo_discapacidad'] . '</td>
					<td>' . $arrData[$i]['opciones'] . '</td>
				 </tr>';
		}
		$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}
	public function getVehiculoDescargo()
	{

		$arrData = $this->model->selectVehiculosDescargo();
		$htmlDatosTabla = "";
		for ($i = 0; $i < count($arrData); $i++) {
			$btnView = "";


			$htmlDatosTabla .= '<tr>
					<td>' . $arrData[$i]['placa'] . '</td>
					<td>' . $arrData[$i]['legalidad_vehiculo'] . '</td>
					<td>' . $arrData[$i]['funcion'] . '</td>
					<td>' . $arrData[$i]['anioVehiculo'] . '</td>
				 </tr>';
		}
		$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}

	public function getliceniasporvencer() //codigo Dj17002
	{

		$arrData = $this->model->selectlicenciasporvencer();
		$htmlDatosTabla = "";
		for ($i = 0; $i < count($arrData); $i++) {
			$btnView = "";
			$htmlDatosTabla .= '<tr>
					<td>' . $arrData[$i]['nombre'] . '</td>
					<td>' . $arrData[$i]['apellido'] . '</td>
					<td>' . $arrData[$i]['numero_licencia'] . '</td>
					<td>' . $arrData[$i]['tipo_licencia'] . '</td>
					<td>' . $arrData[$i]['fecha_renovacion'] . '</td>
				 </tr>';
		}
		$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}

	public function getAgentesPorPromocion()
	{

		$arrData = $this->model->selectAgentesPorAñoDePromocion();
		$htmlDatosTabla = "";
		for ($i = 0; $i < count($arrData); $i++) {
			$btnView = "";


			$htmlDatosTabla .= '<tr>
					<td>' . $arrData[$i]['dui_pk'] . '</td>
					<td>' . $arrData[$i]['nombre'] . '</td>
					<td>' . $arrData[$i]['apellido'] . '</td>
					<td>' . $arrData[$i]['sexo'] . '</td>
					<td>' . $arrData[$i]['año_promocion'] . '</td>
					<td>' . $arrData[$i]['edad'] . '</td>
				 </tr>';
		}
		$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}

	public function getDiscapacidadesconp(int $idEmpleado)
	{
		if ($idEmpleado == -1) {
			$arrData = $this->model->selectDiscapacidad();
			$htmlDatosTabla = "";
			for ($i = 0; $i < count($arrData); $i++) {
				$btnView = "";
				$btnEdit = "";
				$btnDelete = "";

				$btnView = '<button class="btn btn-warning btn-sm btnPermisosRol" onClick="fntPermisos(' . $arrData[$i]['id_oni'] . ')" title="Permisos"><i class="fas fa-eye"></i></button>';

				$arrData[$i]['opciones'] = '<div class="text-center">' . $btnView . ' ' . $btnEdit . ' ' . $btnDelete . '</div>';


				$htmlDatosTabla .= '<tr>
					<td>' . $arrData[$i]['id_oni'] . '</td>
					<td>' . $arrData[$i]['nombre'] . '</td>
					<td>' . $arrData[$i]['apellido'] . '</td>
					<td>' . $arrData[$i]['tipo_discapacidad'] . '</td>
					<td>' . $arrData[$i]['opciones'] . '</td>
				 </tr>';
			}
			$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla);
			echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);
		} else {
			$arrData = $this->model->selectDiscapacidadconp($idEmpleado);

			$htmlDatosTabla = "";
			for ($i = 0; $i < count($arrData); $i++) {
				$btnView = "";
				$btnEdit = "";
				$btnDelete = "";

				$btnView = '<button class="btn btn-warning btn-sm btnPermisosRol" onClick="fntPermisos(' . $arrData[$i]['id_oni'] . ')" title="Permisos"><i class="fas fa-eye"></i></button>';

				$arrData[$i]['opciones'] = '<div class="text-center">' . $btnView . ' ' . $btnEdit . ' ' . $btnDelete . '</div>';


				$htmlDatosTabla .= '<tr>
					<td>' . $arrData[$i]['id_oni'] . '</td>
					<td>' . $arrData[$i]['nombre'] . '</td>
					<td>' . $arrData[$i]['apellido'] . '</td>
					<td>' . $arrData[$i]['tipo_discapacidad'] . '</td>
					<td>' . $arrData[$i]['opciones'] . '</td>
				 </tr>';
			}
			$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla);
			echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);
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
		$this->views->getView($this, "permisos", $data);
	}

	public function getPermisos(int $tipop)
	{

		$arrData = $this->model->selectPermisos($tipop);
		$htmlDatosTabla = "";
		for ($i = 0; $i < count($arrData); $i++) {

			$htmlDatosTabla .= '<tr>
					<td>' . $arrData[$i]['num_oni'] . '</td>
					<td>' . $arrData[$i]['nombre'] . '</td>
					<td>' . $arrData[$i]['apellido'] . '</td>
					<td>' . $arrData[$i]['rango_policia'] . '</td>
					<td>' . $arrData[$i]['N_permisos'] . '</td>
					<td>' . $arrData[$i]['N_permisos_disp'] . '</td>
					</tr>';
		}
	}

	public function AgentesSancionesyfaltas()
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "AgentesSancionesfaltas";
		$data['page_name'] = "Sanciones y faltas cometidas";
		$data['page_title'] = "Sanciones y faltas cometidas";
		$data['page_functions_js'] = "functions_agentessancionesyfaltas.js";
		$this->views->getView($this, "agentessancionesyfaltas", $data);
	}

	public function getAgentesSancionesyFaltas()
	{

		$arrData = $this->model->selectAgentesSanciones();
		$htmlDatosTabla = "";
		for ($i = 0; $i < count($arrData); $i++) {
			$btnView = "";
			if ($arrData[$i]['tipo_falta_cometida'] == "1") {
				$arrData[$i]['tipo_falta_cometida'] = "Leve";
			}
			if ($arrData[$i]['tipo_falta_cometida'] == "2") {
				$arrData[$i]['tipo_falta_cometida'] = "Grave";
			}
			if ($arrData[$i]['tipo_falta_cometida'] == "3") {
				$arrData[$i]['tipo_falta_cometida'] = "Muy grave";
			}

			$htmlDatosTabla .= '<tr>
					<td>' . $arrData[$i]['rango_policia'] . '</td>
					<td>' . $arrData[$i]['num_oni'] . '</td>
					<td>' . $arrData[$i]['nombre'] . '</td>
					<td>' . $arrData[$i]['apellido'] . '</td>
					<td>' . $arrData[$i]['fecha_de_sansion'] . '</td>
					<td>' . $arrData[$i]['tipo_falta_cometida'] . '</td>
					<td>' . $arrData[$i]['falta'] . '</td>
					<td>' . $arrData[$i]['sansion'] . '</td>
					<td>' . $arrData[$i]['nivel_org'] . '</td>
>>>>>>> 125fddd6945f0d360bf63b071552a742682f88d2
				 </tr>';
		}
		$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}

	/* consulta 30(PM17006) */

	public function getDiasAgentesPermisoGoceSueldo()
	{

		$arrData = $this->model->selectDiasAgentesPermisoGoceSueldo();
		$htmlDatosTabla = "";
		for ($i = 0; $i < count($arrData); $i++) {
			$htmlDatosTabla .= '<tr>
					<td>' . $arrData[$i]['rango_policia'] . '</td>
					<td>' . $arrData[$i]['num_oni'] . '</td>
					<td>' . $arrData[$i]['nombre_completo'] . '</td>
					<td>' . $arrData[$i]['dias_permiso'] . '</td>
					<td>' . $arrData[$i]['motivos_permiso_con_goce_de_sueldo'] . '</td>
				 </tr>';
		}
		$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}
	public function getDiasAgentesPermisoGoceSueldoPermisoCompensatorio()
	{

		$arrData = $this->model->selectDiasAgentesPermisoGoceSueldoPermisoCompensatorio();
		$htmlDatosTabla = "";
		for ($i = 0; $i < count($arrData); $i++) {
			$htmlDatosTabla .= '<tr>
					<td>' . $arrData[$i]['rango_policia'] . '</td>
					<td>' . $arrData[$i]['num_oni'] . '</td>
					<td>' . $arrData[$i]['nombre_completo'] . '</td>
					<td>' . $arrData[$i]['dias_permiso'] . '</td>
				 </tr>';
		}
		$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}

	/* fin consulta 30(PM17006) */

	public function selectAgentesSancionescount1()
	{

		$nombres = array();
		$cantidad = array();
		$arrData = $this->model->selectSancionesVecesAplicadas();

		for ($i = 0; $i < count($arrData); $i++) {
			array_push($nombres, $arrData[$i]['sansion']);
			array_push($cantidad, intval($arrData[$i]['veces_aplicada']));
		}
		$arrayDatos = array('nombres' => $nombres, 'cantidad' => $cantidad);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}

	public function getEnfermedadescount()
	{

		$nombres = array();
		$cantidad = array();
		$arrData = $this->model->selectEnfermedadcount();

		for ($i = 0; $i < count($arrData); $i++) {
			$vigente = "";
			if ($arrData[$i]['enfermedad_vigente'] == 1) {
				$vigente = "Si";
			} else {
				$vigente = "No";
			}
			array_push($nombres, $vigente);
			array_push($cantidad, intval($arrData[$i]['cantidad']));
		}
	}
	//Marta Gloria Campos Guzman
	public function llamadaEmergencia()
	{

		$data['page_id'] = 3;
		$data['page_tag'] = "Emergencia";
		$data['page_name'] = "Emergencia";
		$data['page_title'] = "Llamada de Emergencia";
		$data['page_functions_js'] = "functions_llamadaemergencia.js";
		$this->views->getView($this, "llamadaemergencia", $data);
		die();
	}

	public function getllamadaemergencia()
	{

		$arrData = $this->model->selectllamadaemergencia();
		$htmlDatosTabla = "";
		for ($i = 0; $i < count($arrData); $i++) {
			$btnView = "";


			$htmlDatosTabla .= '<tr>
					<td>' . $arrData[$i]['num_oni'] . '</td>
					<td>' . $arrData[$i]['nombreagente'] . '</td>
					<td>' . $arrData[$i]['tipo_sangre'] . '</td>
					<td>' . $arrData[$i]['nombrefamiliar'] . '</td>
					<td>' . $arrData[$i]['telefono'] . '</td>
					
				 </tr>';
		}
		$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}


	public function getEnfermedades()
	{

		$arrData = $this->model->selectEnfermedad();
		$htmlDatosTabla = "";
		for ($i = 0; $i < count($arrData); $i++) {
			$btnView = "";


			$btnView = '<button class="btn btn-warning btn-sm btnPermisosRol" onClick="fntPermisos(' . $arrData[$i]['dui_pk'] . ')" title="Permisos"><i class="fas fa-eye"></i></button>';

			$arrData[$i]['opciones'] = '<div class="text-center">' . $btnView . ' </div>';

			$vigente = "";
			$tipo = "";
			if ($arrData[$i]['enfermedad_vigente'] == 1) {
				$vigente = "Si";
			} else {
				$vigente = "No";
			}

			if ($arrData[$i]['tipo'] == 1) {
				$tipo = "Oncologica";
			} else if ($arrData[$i]['tipo'] == 2) {
				$tipo = "Infecciosas o Parasitaria";
			} else if ($arrData[$i]['tipo'] == 3) {
				$tipo = "De Sangre";
			} else if ($arrData[$i]['tipo'] == 4) {
				$tipo = "Sistema Inmunitario";
			} else if ($arrData[$i]['tipo'] == 5) {
				$tipo = "Endocrinas";
			} else if ($arrData[$i]['tipo'] == 6) {
				$tipo = "Del comportamiento y del Desarrollo";
			} else if ($arrData[$i]['tipo'] == 7) {
				$tipo = "Del Sistema Nervioso";
			} else if ($arrData[$i]['tipo'] == 8) {
				$tipo = "Oftalmologicas y de la Vision";
			} else if ($arrData[$i]['tipo'] == 9) {
				$tipo = "Auditiva";
			} else if ($arrData[$i]['tipo'] == 10) {
				$tipo = "Cardiovascular";
			} else if ($arrData[$i]['tipo'] == 11) {
				$tipo = "Respiratoria";
			} else if ($arrData[$i]['tipo'] == 12) {
				$tipo = "Sistema Digestivo";
			} else if ($arrData[$i]['tipo'] == 13) {
				$tipo = "De la Piel";
			} else if ($arrData[$i]['tipo'] == 14) {
				$tipo = "Del Aparato Genitourinario";
			} else if ($arrData[$i]['tipo'] == 15) {
				$tipo = "Congenitas y Alteraciones Cromosonicas";
			}

			$htmlDatosTabla .= '<tr>
					<td>' . $arrData[$i]['dui_pk'] . '</td>
					<td>' . $arrData[$i]['fecha_deteccion'] . '</td>
					<td>' . $arrData[$i]['nombre'] . '</td>
					<td>' . $arrData[$i]['apellido'] . '</td>
					<td>' . $vigente . '</td>
					<td>' . $arrData[$i]['sexo'] . '</td>
					<td>' . $arrData[$i]['estatura'] . '</td>
					<td>' . $arrData[$i]['peso'] . '</td>
					<td>' . $arrData[$i]['nombre_enfermedad'] . '</td>
					<td>' . $tipo . '</td>
					<td>' . $arrData[$i]['opciones'] . '</td>
				 </tr>';
		}
		$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);

		die();
	}

	public function getEnfermedadesconp(string $fecha)
	{

		$arrData = $this->model->selectEnfermedadconp($fecha);

		$htmlDatosTabla = "";
		for ($i = 0; $i < count($arrData); $i++) {
			$btnView = "";
			$btnEdit = "";
			$btnDelete = "";

			$btnView = '<button class="btn btn-warning btn-sm btnPermisosRol" onClick="fntPermisos(' . $arrData[$i]['dui_pk'] . ')" title="Permisos"><i class="fas fa-eye"></i></button>';

			$arrData[$i]['opciones'] = '<div class="text-center">' . $btnView . ' ' . $btnEdit . ' ' . $btnDelete . '</div>';
			$vigente = "";
			$tipo = "";
			if ($arrData[$i]['enfermedad_vigente'] == 1) {
				$vigente = "Si";
			} else {
				$vigente = "No";
			}

			if ($arrData[$i]['tipo'] == 1) {
				$tipo = "Oncologica";
			} else if ($arrData[$i]['tipo'] == 2) {
				$tipo = "Infecciosas o Parasitaria";
			} else if ($arrData[$i]['tipo'] == 3) {
				$tipo = "De Sangre";
			} else if ($arrData[$i]['tipo'] == 4) {
				$tipo = "Sistema Inmunitario";
			} else if ($arrData[$i]['tipo'] == 5) {
				$tipo = "Endocrinas";
			} else if ($arrData[$i]['tipo'] == 6) {
				$tipo = "Del comportamiento y del Desarrollo";
			} else if ($arrData[$i]['tipo'] == 7) {
				$tipo = "Del Sistema Nervioso";
			} else if ($arrData[$i]['tipo'] == 8) {
				$tipo = "Oftalmologicas y de la Vision";
			} else if ($arrData[$i]['tipo'] == 9) {
				$tipo = "Auditiva";
			} else if ($arrData[$i]['tipo'] == 10) {
				$tipo = "Cardiovascular";
			} else if ($arrData[$i]['tipo'] == 11) {
				$tipo = "Respiratoria";
			} else if ($arrData[$i]['tipo'] == 12) {
				$tipo = "Sistema Digestivo";
			} else if ($arrData[$i]['tipo'] == 13) {
				$tipo = "De la Piel";
			} else if ($arrData[$i]['tipo'] == 14) {
				$tipo = "Del Aparato Genitourinario";
			} else if ($arrData[$i]['tipo'] == 15) {
				$tipo = "Congenitas y Alteraciones Cromosonicas";
			}

			$htmlDatosTabla .= '<tr>
					<td>' . $arrData[$i]['dui_pk'] . '</td>
					<td>' . $arrData[$i]['fecha_deteccion'] . '</td>
					<td>' . $arrData[$i]['nombre'] . '</td>
					<td>' . $arrData[$i]['apellido'] . '</td>
					<td>' . $vigente . '</td>
					<td>' . $arrData[$i]['sexo'] . '</td>
					<td>' . $arrData[$i]['estatura'] . '</td>
					<td>' . $arrData[$i]['peso'] . '</td>
					<td>' . $arrData[$i]['nombre_enfermedad'] . '</td>
					<td>' . $tipo . '</td>
				    <td>' . $arrData[$i]['opciones'] . '</td>
				 </tr>';
		}
		$arrayDatos = array('datosIndividuales' => $arrData, 'htmlDatosTabla' => $htmlDatosTabla);
		echo json_encode($arrayDatos, JSON_UNESCAPED_UNICODE);


		die();
	}
}
