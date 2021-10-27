<?php include 'header.php'; ?>

<body>
    <div id="app">

        <?php $page = 'exp';
        $item = '1';
        include 'nav_bar.php';  ?>
        <?php include 'navbar-horizontal.php';  ?>
        <?php include 'modal/modal_enfermedad.php'; ?>
        <?php include 'modal/md_discapacidad.php'; ?>
        <?php include 'modal/md_educacion.php'; ?>
        <?php include 'modal/md_especialidadGusta.php'; ?>
        <?php include 'modal/modal_equipo_computo.php'; ?>
        <?php include 'modal/modal_familiares.php'; ?>
        <?php include 'modal/md_exp_laboral.php'; ?>
    </div>
    <div id="main">
        <?php include 'modal/md_telefono.php'; ?>
        <div class="page-content">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header d-flex align-items-center ">
                        <a href="nuevo_expediente.php" class="btn btn-white"><i class="bi bi-x bi-middle"></i></a>
                        <h5 class="card-title m-0 ps-2 ">Ficha Personal</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3 col-12 text-center pb-2 ">
                                <img src="../assets/images/logo/usuario.png" class="img-fluid" alt="...">
                            </div>
                            <div class="col-md-9 col-12">
                                <div class="row p-0">
                                    <div class="col-md-2 col-12 d-flex pe-0 b-0">
                                        <div class="position-relative  p-1 ">
                                            <input type="text" class="form-control p-0 bg-white text-end border-0" value="E1563" id="oni" disabled>

                                        </div>
                                    </div>
                                    <div class="col-md-5 col-12 d-flex justify-content-center p-0">
                                        <div class="position-relative  p-1" style="width:100%">
                                            <!-- <input type="text" class="form-control" placeholder="Activo" id="estado"> -->
                                            <input type="text" class="form-control p-0 bg-white border-0 text-center" value="Juan Carlos Ramirez Valencia" id="oni" disabled readonly>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12 d-flex justify-content-center p-0 ">
                                        <div class="position-relative  p-1" style="width:100%">
                                            <!-- <input type="text" class="form-control" placeholder="Activo" id="estado"> -->
                                            <select class="form-select bg-success text-white " aria-label="Default select example" disabled="true">
                                                <option value="1">Activo</option>
                                                <option value="2">Inactivo</option>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-12 d-flex justify-content-center ps-0">
                                        <div class="position-relative  p-1" style="width:100%">
                                            <select class="form-select " aria-label="Default select example" disabled="true">
                                                <option value="1">Disponible</option>
                                                <option value="2">No Disponible</option>

                                            </select>

                                        </div>
                                    </div>

                                </div>



                                <div class="row">


                                    <div class="col-md-2 col-12 d-flex pe-0">
                                        <div class="position-relative  p-1">
                                            <input type="text" class="form-control p-0 bg-white text-end  border-0" value="45 años" id="edad" disabled="true">

                                        </div>
                                    </div>
                                    <div class="col-md-5 col-12 d-flex justify-content-center p-0 ">
                                        <div class="position-relative  p-1" style="width:100%">
                                            <!-- <input type="text" class="form-control" placeholder="Activo" id="estado"> -->
                                            <input type="text" class="form-control p-0 bg-white border-0 text-center" value="Sub-delegacion San Vicente" id="lugar" disabled>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12 d-flex justify-content-center p-0">
                                        <div class="position-relative  p-1" style="width:100%">
                                            <!-- <input type="text" class="form-control" placeholder="Activo" id="estado"> -->
                                            <input type="text" class="form-control p-0 bg-white border-0 text-center" value="Agente" id="categoria" disabled>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-12 d-flex justify-content-center ps-0">
                                        <div class="position-relative  p-1" style="width:100%">
                                            <input type="text" class="form-control p-0 bg-white border-0 text-center" value="Masculino" id="categoria" disabled>

                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>

                        <div class="col-12  justify-content-center">
                            <ul class="nav nav-tabs p-0 text-center" id="myTab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="home-tab" data-bs-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Área Personal</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="profile-tab" data-bs-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Área institucional</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="educacion-tab" data-bs-toggle="tab" href="#educacion" role="tab" aria-controls="educacion" aria-selected="false">Área académica</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="familia-tab" data-bs-toggle="tab" href="#familia" role="tab" aria-controls="familia" aria-selected="false">Familiares</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="permisos-tab" data-bs-toggle="tab" href="#permisos" role="tab" aria-controls="permisos" aria-selected="false">Permisos y sanciones</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <!-- acordeon 1 area personal-->
                                <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
                                    <div class="accordion" id="accordionExample">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="headingOne">
                                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                                    <h6 class="m-0">Datos Personales </h6>
                                                </button>
                                            </h2>
                                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                                <div class="accordion-body">
                                                    <table class="table table-borderless" id="tableDatos">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Id-icon">DUI</label>
                                                                        <div class="position-relative">
                                                                            <input type="text" class="form-control" placeholder="00000000-0" id="Id-icon">
                                                                            <div class="form-control-icon">
                                                                                <i class="bi bi-credit-card-2-front"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td width="300">
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Id-icon">Género</label>
                                                                        <br>
                                                                        <div class="form-check form-check-inline">
                                                                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                                                            <label class="form-check-label" for="flexRadioDefault1">
                                                                                Masculino
                                                                            </label>
                                                                        </div>
                                                                        <div class="form-check form-check-inline">
                                                                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                                                                            <label class="form-check-label" for="flexRadioDefault2">
                                                                                Femenino
                                                                            </label>
                                                                        </div>

                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Id-icon">Tipo de sangre</label>
                                                                        <select class="form-select" aria-label="Default select example">
                                                                            <option selected>Seleccione una opción</option>
                                                                            <option value="1">O negativo</option>
                                                                            <option value="2">ORH positivo</option>
                                                                            <option value="3">A negativo</option>
                                                                            <option value="4">ARH positivo</option>
                                                                            <option value="5">B negativo</option>
                                                                            <option value="6">BRH positivo</option>
                                                                            <option value="7">AB negativo</option>
                                                                            <option value="8">ABRH positivo</option>
                                                                        </select>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Id-icon">NIT</label>
                                                                        <div class="position-relative">
                                                                            <input type="text" class="form-control" placeholder="00-000-000-0" id="Id-icon">
                                                                            <div class="form-control-icon">
                                                                                <i class="bi bi-credit-card-2-front"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Id-icon">Estado civil</label>
                                                                        <select class="form-select" aria-label="Default select example">
                                                                            <option selected>Seleccione una opción</option>
                                                                            <option value="1">Soltero</option>
                                                                            <option value="2">Casado</option>
                                                                            <option value="3">Viudo</option>
                                                                            <option value="3">Divorciado</option>
                                                                        </select>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Id-icon">Estatura</label>
                                                                        <div class="position-relative">
                                                                            <input type="number" class="form-control" value="4.5" data-decimals="2" min="0" max="9" step="0.01" />
                                                                            <div class="form-control-icon">
                                                                                <i class="bi bi-person-lines-fill"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Id-icon">ISSS</label>
                                                                        <div class="position-relative">
                                                                            <input type="text" class="form-control" placeholder="0000000" id="Id-icon">
                                                                            <div class="form-control-icon">
                                                                                <i class="bi bi-credit-card-2-front"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Nombre-icon">Dirección</label>
                                                                        <div class="position-relative">
                                                                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="1"></textarea>
                                                                            <div class="form-control-icon">
                                                                                <i class="bi bi-geo-alt"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Id-icon">Peso</label>
                                                                        <div class="position-relative">
                                                                            <input type="number" class="form-control" value="4.5" data-decimals="2" min="0" max="9" step="0.01" />
                                                                            <div class="form-control-icon">
                                                                                <i class="bi bi-person-lines-fill"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Nombre-icon">Nombre</label>
                                                                        <div class="position-relative">
                                                                            <input type="text" class="form-control" placeholder="Juan Carlos" id="Nombre-icon">
                                                                            <div class="form-control-icon">
                                                                                <i class="bi bi-person"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Apellido-icon">Lugar de Nacimiento</label>
                                                                        <div class="position-relative">
                                                                            <input type="text" class="form-control" placeholder="San Vicente" id="Apellido-icon">
                                                                            <div class="form-control-icon">
                                                                                <i class="bi bi-geo"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Correo-icon">Fecha de Ingreso a PNC</label>
                                                                        <div class="position-relative">
                                                                            <input type="date" class="form-control" placeholder="" id="Id-icon">
                                                                            <div class="form-control-icon">
                                                                                <i class="bi bi-calendar"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Apellido-icon">Apellido</label>
                                                                        <div class="position-relative">
                                                                            <input type="text" class="form-control" placeholder="Perez Soza" id="Apellido-icon">
                                                                            <div class="form-control-icon">
                                                                                <i class="bi bi-person"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Correo-icon">Correo Personal</label>
                                                                        <div class="position-relative">
                                                                            <input type="text" class="form-control" placeholder="jose145@gmail.com" id="Correo-icon">
                                                                            <div class="form-control-icon">
                                                                                <i class="bi bi-envelope"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Nombre-icon">Señales Especiales</label>
                                                                        <div class="position-relative">
                                                                            <input type="text" class="form-control" placeholder="Ninguna" id="Nombre-icon">
                                                                            <div class="form-control-icon">
                                                                                <i class="bi bi-heart-half"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <div class="form-group has-icon-left">
                                                                        <label for="Id-icon">Fecha de Nacimiento</label>
                                                                        <div class="position-relative">
                                                                            <input type="date" class="form-control" placeholder="" id="Id-icon">
                                                                            <div class="form-control-icon">
                                                                                <i class="bi bi-calendar"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                </div>
                                                </td>
                                                <td>
                                                    <div class="form-group has-icon-left">
                                                        <label for="Correo-icon">Correo Institucional</label>
                                                        <div class="position-relative">
                                                            <input type="text" class="form-control" placeholder="jose145@pnc.com" id="Correo-icon">
                                                            <div class="form-control-icon">
                                                                <i class="bi bi-envelope"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="form-group has-icon-left">
                                                        <label for="Apellido-icon">Fotografía</label>
                                                        <div class="position-relative">
                                                            <input class="form-control" type="file" id="formFile">
                                                            <div class="form-control-icon">
                                                                <i class="bi bi-camera"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                </tr>
                                                </tbody>
                                                </table>
                                            </div>
                                        </div>

                                        <!---------------------------------Telefonos---------------------------------------------------->

                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="headingTwo">
                                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                    <h6 class="m-0">Teléfonos</h6>
                                                </button>
                                            </h2>
                                            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                                <div class="accordion-body">
                                                    <div class="card">

                                                        <div class="card-content">
                                                            <div class="card-body">
                                                                <table class="table table-striped" id="tableCel">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>Número de teléfono</th>
                                                                            <th>Tipo</th>
                                                                            <th>Acciones</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td>7070 8282</td>
                                                                            <td>Personal</td>

                                                                            <td>
                                                                                <button type="button" data-bs-toggle="modal" data-bs-target="#md_cel" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                                <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>7060 8182</td>
                                                                            <td>Institucional</td>

                                                                            <td>
                                                                                <button type="button" data-bs-toggle="modal" data-bs-target="#md_cel" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                                <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>7060 </td>
                                                                            <td>Casa</td>

                                                                            <td>
                                                                                <button type="button" data-bs-toggle="modal" data-bs-target="#md_cel" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                                <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                            </td>
                                                                        </tr>


                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-----------------------------------Enfermedades-------------------------------------------------->

                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="headingThree">
                                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                    <h6 class="m-0">Enfermedades</h6>
                                                </button>
                                            </h2>
                                            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                                <div class="accordion-body">
                                                    <table class="table table-striped" id="tableEnfe">
                                                        <thead>
                                                            <tr>
                                                                <th>Fecha Detección</th>
                                                                <th>Enfermedad</th>
                                                                <th>Vigencia</th>
                                                                <th>Documentacion</th>
                                                                <th>Acciones</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>22/02/2021</td>
                                                                <td>Diabetes</td>
                                                                <td>Vigente</td>
                                                                <td>doc.pdf</td>

                                                                <td>
                                                                    <button type="button" data-bs-toggle="modal" data-bs-target="#md_enfermedad" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                    <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>22/02/2020</td>
                                                                <td>Artritis</td>
                                                                <td>Vigente</td>
                                                                <td>doc1.pdf</td>

                                                                <td>
                                                                    <button type="button" data-bs-toggle="modal" data-bs-target="#md_enfermedad" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                    <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>22/02/2019</td>
                                                                <td>Asma</td>
                                                                <td>Vigente</td>
                                                                <td>doc11.pdf</td>

                                                                <td>
                                                                    <button type="button" data-bs-toggle="modal" data-bs-target="#md_enfermedad" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                    <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                </td>
                                                            </tr>


                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>
                                        </div>
                                        <!-----------------------------Discapacidades-------------------------------------------------->

                                        <div class="accordion-item">
                                            <h2 class="accordion-header" id="headingFour">
                                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                                    <h6 class="m-0">Discapacidades</h6>
                                                </button>
                                            </h2>
                                            <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                                                <div class="accordion-body">
                                                    <table class="table table-striped" id="tableDis">
                                                        <thead>
                                                            <tr>
                                                                <th>Discapacidad</th>
                                                                <th>Fecha Inicio</th>
                                                                <th>Fecha Fin</th>
                                                                <th>Acciones</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>Sensorial</td>
                                                                <td>22/02/2019</td>
                                                                <td>22/02/2020</td>

                                                                <td>
                                                                    <button type="button" data-bs-toggle="modal" data-bs-target="#modaldiscapacidad" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                    <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                </td>
                                                            </tr>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--fin de acordeon 1 area personal-->

                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <div class="accordion" id="accordionOni">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingFive">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
                                                <h6 class="m-0">ONI</h6>
                                            </button>
                                        </h2>
                                        <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionOni">
                                            <div class="accordion-body">
                                                <div class="card">

                                                    <div class="card-content">
                                                        <div class="card-body">
                                                            <table class="table table-striped" id="tableOni">
                                                                <thead>
                                                                    <tr>
                                                                        <th>ONI</th>
                                                                        <th>Fecha de asignación</th>
                                                                        <th>Estado</th>
                                                                        <th>Acciones</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>E1563</td>
                                                                        <td>13 / 01 / 2000</td>
                                                                        <td>
                                                                            <span class="badge bg-success">Active</span>
                                                                        </td>
                                                                        <td>
                                                                            <button class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                            <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                        </td>
                                                                    </tr>


                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingSix">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapsePromocion" aria-expanded="false" aria-controls="collapseOniTwo">
                                                <h6 class="m-0">Promoción</h6>
                                            </button>
                                        </h2>
                                        <div id="collapsePromocion" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionOni">
                                            <div class="accordion-body">
                                                <div class="card">

                                                    <div class="card-content">
                                                        <div class="card-body">
                                                            <table class="table table-striped" id="tablePromocion">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Promoción</th>
                                                                        <th>Año de promoción</th>
                                                                        <th>Acciones</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>1221563</td>
                                                                        <td>13 / 01 / 2000</td>

                                                                        <td>
                                                                            <button class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                            <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                        </td>
                                                                    </tr>


                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="heading7">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseArma" aria-expanded="false" aria-controls="collapseOniThree">
                                                <h6 class="m-0">Arma</h6>
                                            </button>
                                        </h2>
                                        <div id="collapseArma" class="accordion-collapse collapse" aria-labelledby="heading7" data-bs-parent="#accordionOni">
                                            <div class="accordion-body">
                                                <div class="card">

                                                    <div class="card-content">
                                                        <div class="card-body">
                                                            <table class="table table-striped" id="tableArma">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Marca</th>
                                                                        <th>Tipo</th>
                                                                        <th>Serie</th>
                                                                        <th>Modelo</th>
                                                                        <th>Calibre</th>
                                                                        <th>Balistica</th>
                                                                        <th>Fecha asignación</th>
                                                                        <th>Acciones</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Beretta</td>
                                                                        <td>Pistola semiautomatica</td>
                                                                        <td>S1020</td>
                                                                        <td>Beretta 92</td>
                                                                        <td>9 mm</td>
                                                                        <td>50 m</td>
                                                                        <td>13 / 01 / 2000</td>

                                                                        <td>
                                                                            <button class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                            <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                        </td>
                                                                    </tr>


                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingTrabajo">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTrabajo" aria-expanded="false" aria-controls="collapseTrabajo">
                                                <h6 class="m-0">Lugar de trabajo</h6>
                                            </button>
                                        </h2>
                                        <div id="collapseTrabajo" class="accordion-collapse collapse" aria-labelledby="headingTrabajo" data-bs-parent="#accordionOni">
                                            <div class="accordion-body">
                                                <div class="card">

                                                    <div class="card-content">
                                                        <div class="card-body">
                                                            <table class="table table-striped" id="tableTrabajo">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Puesto Asignado</th>
                                                                        <th>Fecha de asignación</th>

                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Puesto de Santa Clara</td>
                                                                        <td>12/01/2020</td>


                                                                        <td>
                                                                            <button class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                            <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                        </td>
                                                                    </tr>


                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="heading8">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseLicenciaA" aria-expanded="false" aria-controls="collapseFour">
                                                <h6 class="m-0">Licencia arma</h6>
                                            </button>
                                        </h2>
                                        <div id="collapseLicenciaA" class="accordion-collapse collapse" aria-labelledby="heading8" data-bs-parent="#accordionOni">
                                            <div class="accordion-body">
                                                <h6>En mantenimiento</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingFive">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseLicenciaC" aria-expanded="false" aria-controls="collapseFive">
                                                <h6 class="m-0">Licencia conducir</h6>
                                            </button>
                                        </h2>
                                        <div id="collapseLicenciaC" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionOni">
                                            <div class="accordion-body">
                                                <div class="card">

                                                    <div class="card-content">
                                                        <div class="card-body">
                                                            <table class="table table-striped" id="tableLicencia">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Numero licencia</th>
                                                                        <th>Tipo de licencia</th>
                                                                        <th>Fecha renovación</th>
                                                                        <th>permiso</th>
                                                                        <th>Acciones</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>1221563</td>
                                                                        <td>Liviana</td>
                                                                        <td>13 / 01 / 2010</td>
                                                                        <td>Denegado</td>

                                                                        <td>
                                                                            <button class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                            <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                        </td>
                                                                    </tr>


                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>


                            <div class="tab-pane fade" id="educacion" role="tabpanel" aria-labelledby="educacion-tab">
                                <div class="accordion" id="accordionEducacion">

                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingEdu">
                                            <button class="accordion-button " type="button" data-bs-toggle="collapse" data-bs-target="#collapseAcademica" aria-expanded="true" aria-controls="collapseAcademica">
                                                <h6 class="m-0">Académica</h6>
                                            </button>
                                        </h2>
                                        <div id="collapseAcademica" class="accordion-collapse collapse show" aria-labelledby="headingEdu" data-bs-parent="#accordionEducacion">
                                            <div class="accordion-body">

                                                <div class="card">
                                                    <div class="card-content">
                                                        <div class="card-body">
                                                            <table class="table table-striped" id="tableAcademica">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Grado obtenido</th>
                                                                        <th>Trabajo realizado</th>
                                                                        <th>Fecha de inicio</th>
                                                                        <th>Fecha de fin</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Técnico en informática l</td>
                                                                        <td>Profesor de Informática</td>
                                                                        <td>13/01/2010</td>
                                                                        <td>21/12/2010</td>

                                                                        <td>
                                                                            <button type="button" data-bs-toggle="modal" data-bs-target="#md_educacion" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                            <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td>Lic. en Administracíon de empresas</td>
                                                                        <td> - </td>
                                                                        <td>13/02/2011</td>
                                                                        <td>7/04/2017</td>

                                                                        <td>
                                                                            <button type="button" data-bs-toggle="modal" data-bs-target="#md_educacion" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                            <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingExp">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExp" aria-expanded="false" aria-controls="collapseExp">
                                                <h6 class="m-0">Capacitaciones y cursos </h6>
                                            </button>
                                        </h2>
                                        <div id="collapseExp" class="accordion-collapse collapse" aria-labelledby="headingExp" data-bs-parent="#accordionEducacion">
                                            <div class="accordion-body">
                                                <div class="card">
                                                    <div class="card-content">

                                                        <div class="card-body">
                                                            <table class="table table-striped" id="tableCursos">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Capacitaciones y cursos</th>
                                                                        <th>Fecha de inicio</th>
                                                                        <th>Fecha de fin</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Seguridad privada</td>
                                                                        <td>18 / 01 / 2018</td>
                                                                        <td>21 / 02/ 2018</td>

                                                                        <td>
                                                                            <button type="button" data-bs-toggle="modal" data-bs-target="#md_exp" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                            <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headinHabilidades">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseHabilidades" aria-expanded="false" aria-controls="collapseHabilidades">
                                                <h6 class="m-0">Habilidades</h6>
                                            </button>
                                        </h2>
                                        <div id="collapseHabilidades" class="accordion-collapse collapse" aria-labelledby="headinHabilidades" data-bs-parent="#accordionEducacion">
                                            <div class="accordion-body">
                                                <div class="card">

                                                    <div class="card-content">
                                                        <div class="card-body">
                                                            <table class="table table-striped" id="tableHabilidades">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Habilidades</th>
                                                                        <th>Fecha </th>
                                                                        <!-- <th>Tipo Especialidad</th> -->
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Manejo de Informática y programación</td>
                                                                        <td>7 / 06 / 2021</td>
                                                                        <td>La desempeña</td>

                                                                        <td>
                                                                            <button type="button" data-bs-toggle="modal" data-bs-target="#modalhabilidad" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                            <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingEspecialidad">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEspecialidad" aria-expanded="false" aria-controls="collapseEspecialidad">
                                                <h6 class="m-0">Especialidades</h6>
                                            </button>
                                        </h2>
                                        <div id="collapseEspecialidad" class="accordion-collapse collapse" aria-labelledby="headingEspecialidad" data-bs-parent="#accordionEducacion">
                                            <div class="accordion-body">

                                                <div class="card">
                                                    <div class="card-content">
                                                        <div class="card-body">
                                                            <table class="table table-striped" id="tableEspecialidad">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Especialidades</th>
                                                                        <!-- <th>Equipo de computación</th> -->
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Seguridad Informática</td>
                                                                        <!-- <td>Alienware Aurora R9</td> -->
                                                                        </td>
                                                                        <td>
                                                                            <button type="button" data-bs-toggle="modal" data-bs-target="#md_equipo_computo" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                            <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- familia -->

                            <div class="tab-pane fade" id="familia" role="tabpanel" aria-labelledby="familia-tab">
                                <div class="accordion" id="accordionFamilia">
                                    <div class="accordion-item">

                                        <div class="card">

                                            <div class="card-content">
                                                <div class="card-body">
                                                    <table class="table table-striped" id="tb_familia">
                                                        <thead>
                                                            <tr>
                                                                <th>DUI</th>
                                                                <th>Parentesco</th>
                                                                <th>Nombre</th>
                                                                <th>Telefono</th>
                                                                <th>Acciones</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>07580111-1</td>
                                                                <td>Esposa</td>
                                                                <td>Ana Maria Cruz de Vega</td>
                                                                <td>7890-9988</td>

                                                                <td>
                                                                    <button type="button" data-bs-toggle="modal" data-bs-target="#md_familiares" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                    <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                </td>
                                                            </tr>


                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>





                                </div>
                            </div>

                            <!------------------------ permisos y sanciones ---------------------------->

                            <br>
                            <div class="tab-pane fade" id="permisos" role="tabpanel" aria-labelledby="permisos-tab">
                                <div class="accordion" id="accordionPermisos">

                                    <div class="accordion-item">
                                        <!-- Cabecera del primer acordeon -->
                                        <h2 class="accordion-header" id="headingPermisos">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapsePermisos" aria-expanded="true" aria-controls="collapsePermisos">
                                                <h6 class="m-0">Permisos</h6>
                                            </button>
                                        </h2>
                                        <div id="collapsePermisos" class="accordion-collapse collapse " aria-labelledby="headingPermisos" data-bs-parent="#accordionPermisos">
                                            <div class="accordion-body">
                                                <div class="card">

                                                    <div class="card-content">
                                                        <div class="card-body">
                                                            <table class="table table-striped" id="tb_permisos">
                                                                <thead>
                                                                    <tr>

                                                                        <th>Fecha de inicio</th>
                                                                        <th>Fecha de fin</th>
                                                                        <th>Estado</th>
                                                                        <th>Tipo de permiso</th>
                                                                        <th>Motivo</th>
                                                                        <th>Acciones</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>

                                                                        <td>13/01/2021 :22:20</td>
                                                                        <td>13/02 /2021 :10:05</td>
                                                                        <td>
                                                                            <span class="badge bg-success">Aprovado</span>
                                                                        </td>
                                                                        <td>Con goce de sueldo</td>
                                                                        <td>Urgencia medica</td>
                                                                        <td>
                                                                            <button type="button" data-bs-toggle="modal" data-bs-target="#md_permisos" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                            <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>

                                                                        </td>
                                                                    </tr>


                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingSanciones">
                                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSanciones" aria-expanded="false" aria-controls="collapseSanciones">
                                                <h6 class="m-0">Sanciones</h6>
                                            </button>
                                        </h2>
                                        <div id="collapseSanciones" class="accordion-collapse collapse" aria-labelledby="headingSanciones" data-bs-parent="#accordionPermisos">
                                            <div class="accordion-body">
                                                <div class="card">

                                                    <div class="card-content">
                                                        <div class="card-body">
                                                            <table class="table table-striped" id="tb_sanciones">
                                                                <thead>
                                                                    <tr>

                                                                        <th>Fecha de inicio</th>
                                                                        <th>Fecha de fin</th>
                                                                        <th>Sancion</th>
                                                                        <th>Acciones</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>

                                                                        <td>13/01/2021 :22:20</td>
                                                                        <td>13/02 /2021 :10:05</td>
                                                                        <td>Grave</td>

                                                                        <td>
                                                                            <button type="button" data-bs-toggle="modal" data-bs-target="#md_sancion" class="btn btn-secondary"><i class="bi bi-pencil-square"></i></button>
                                                                            <button class="btn btn-danger"><i class="bi bi-x-circle"></i></button>
                                                                        </td>
                                                                    </tr>


                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>




                                </div>
                            </div>
                            <!-- FIN DE PERMISOS Y SANCIONES -->
                            <?php include 'modal/modal_permisos.php'; ?>
                            <?php include 'modal/modal_combo_motivo.php'; ?>


                        </div>
                        <?php include 'modal/modal_sancion.php'; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="../assets/vendors/simple-datatables/simple-datatables.js"></script>
    <script>
        // Simple Datatable
        let tb_permisos = document.querySelector('#tb_permisos');
        let tb_sanciones = document.querySelector('#tb_sanciones');
        let tb_familia = document.querySelector('#tb_familia');
        let dataTable_p = new simpleDatatables.DataTable(tb_permisos);
        let dataTable_s = new simpleDatatables.DataTable(tb_sanciones);
        let dataTable_f = new simpleDatatables.DataTable(tb_familia);
        let tableOni = document.querySelector('#tableOni');
        let dataTableONI = new simpleDatatables.DataTable(tableOni);
        let tablePromocion = document.querySelector('#tablePromocion');
        let dataTableP = new simpleDatatables.DataTable(tablePromocion);
        let tableArma = document.querySelector('#tableArma');
        let dataTableA = new simpleDatatables.DataTable(tableArma);
        let tableLicencia = document.querySelector('#tableLicencia');
        let dataTableLi = new simpleDatatables.DataTable(tableLicencia);
        let tableDatos = document.querySelector('#tableDatos');
        let dataTableDa = new simpleDatatables.DataTable(tableDatos);
        let tableCel = document.querySelector('#tableCel');
        let dataTableCe = new simpleDatatables.DataTable(tableCel);
        let tableEnfe = document.querySelector('#tableEnfe');
        let dataTableEn = new simpleDatatables.DataTable(tableEnfe);
        let tableDis = document.querySelector('#tableDis');
        let dataTableDis = new simpleDatatables.DataTable(tableDis);
        let tableAcademica = document.querySelector('#tableAcademica');
        let dataTableAca = new simpleDatatables.DataTable(tableAcademica);
        let tableCursos = document.querySelector('#tableCursos');
        let dataTableCursos = new simpleDatatables.DataTable(tableCursos);
        let tableHabilidades = document.querySelector('#tableHabilidades');
        let dataTableHab = new simpleDatatables.DataTable(tableHabilidades);
        let tableEspecialidad = document.querySelector('#tableEspecialidad');
        let dataTableEspe = new simpleDatatables.DataTable(tableEspecialidad);
        let tableTrabajo = document.querySelector('#tableTrabajo');
        let dataTableTra = new simpleDatatables.DataTable(tableTrabajo);
    </script>
    <?php include 'footer.php'; ?>
    </div>

</body>
<!-- includes de modales -->