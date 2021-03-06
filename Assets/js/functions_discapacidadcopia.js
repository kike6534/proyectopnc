
var tableRoles;
var divLoading = document.querySelector('#divLoading');
document.addEventListener('DOMContentLoaded', function(){
    cargar_datos();
    cargar_dona();

});

      //  var result= [];
     //   for(var i in json.cantidad)
//    result.push([json.cantidad [i]]);
  //      console.log(json);

function cargar_dona(){

    $.ajax({
        dataType: "json",
        method: "POST",
        url: base_url+"/Consultas/getDiscapacidadescount"
        
    }).done(function(json) {
        let optionsVisitorsProfile  = {
            series: json.cantidad,
            labels: json.nombres,
            colors: ['#435ebe','#55c6e8','#55c4e8','#77c6e8','#55c6e4'],
            chart: {
                type: 'donut',
                width: '100%',
                height:'350px'
            },
            legend: {
                position: 'bottom'
            },
            plotOptions: {
                pie: {
                    donut: {
                        size: '30%'
                    }
                }
            }
        }
        var chartVisitorsProfile = new ApexCharts(document.getElementById('chart-visitors-profile'), optionsVisitorsProfile)
        chartVisitorsProfile.render();
    }).fail(function(){

    }).always(function(){
        Swal.close();
    });

   


}



function cargar_datos(){
    mostrar_mensaje("Cargando", "Obteniendo datos");
    var datos = {"consultar_info":"si_consultala"}
    $.ajax({
        dataType: "json",
        method: "POST",
        url: base_url+"/Consultas/getDiscapacidades",
        data : datos,
    }).done(function(json) {
        console.log("EL consultar",json);
        $("#datos_tablasanciones").empty().html(json.htmlDatosTabla);
        inicializar_tabla("tablesanciones");
    }).fail(function(){

    }).always(function(){
        Swal.close();
    });
}


window.addEventListener('load', function() {
    fntSelects();
}, false);

function fntSelects(){

    let request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
    let ajaxUrl = base_url+'/Consultas/getTipoDiscapacidad';
    request.open("GET",ajaxUrl,true);
    request.send();
    request.onreadystatechange = function(){
        if(request.readyState == 4 && request.status == 200){
            let objData = JSON.parse(request.responseText);//Lo que trae el JSON del select de NuevaCompra
    
            
            document.querySelector('#datos').innerHTML = objData.proveedores;
           
            $('#datos').selectpicker('render');
          
    
          
        }
    }
    
    
    }


    
    
    function funci(){
    var data = document.getElementById("datos").value;
        mostrar_mensaje("Cargando", "Obteniendo datos");
    var datos = {"consultar_info":"si_consultala"}
    $.ajax({
        dataType: "json",
        method: "POST",
        url: base_url+'/Consultas/getDiscapacidadesconp/'+data,
        data : datos,
    }).done(function(json) {
        console.log("EL consultar",json);
        $("#datos_tablasanciones").empty().html(json.htmlDatosTabla);
        inicializar_tabla("tablesanciones");
    }).fail(function(){

    }).always(function(){
        Swal.close();
    });
    
    

       
       };


function mostrar_mensaje(titulo,mensaje=""){
    Swal.fire({
      title: titulo,
      html: mensaje,
      allowOutsideClick: false,
      timerProgressBar: true,
      didOpen: () => {
        Swal.showLoading()
         
      },
      willClose: () => {
         
      }
    }).then((result) => {
      
       
    })
}


function alerta_recargartabla(titulo, mensaje, tipo){
    
    Swal.fire({
      title: titulo,
      text: mensaje,
      icon: tipo,
      confirmButtonColor: '#3085d6',
      confirmButtonText: 'Aceptar'
    }).then((result) => {
      if (result.isConfirmed) {
        cargar_datos();
      } 
    });

}

function inicializar_tabla(tabla){
    $('#'+tabla).dataTable( {
        "responsive": true,
        "aServerSide": true,
        "autoWidth": false,
        "deferRender": true,
        "retrieve": true,
        "processing": true,
        "paging": true,
        "language": {
            "sProcessing": "Procesando...",
            "sLengthMenu": "Mostrar _MENU_ registros",
            "sZeroRecords": "No se encontraron resultados",
            "sEmptyTable": "Ning??n dato disponible en esta tabla",
            "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_",
            "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0",
            "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix": "",
            "sSearch": "Buscar:",
            "sUrl": "",
            "sInfoThousands": ",",
            "sLoadingRecords": "Cargando...",
            "oPaginate": {
                "sFirst": "Primero",
                "sLast": "??ltimo",
                "sNext": "Siguiente",
                "sPrevious": "Anterior"
            }
        },
        "columns":[
            {"data":"id_oni"},
            {"data":"nombre"},
            {"data":"apellido"},
            {"data":"tipo_discapacidad"},
            {"data":"opciones"}
        ],
        'dom': '<"row"<"col-sm-12 col-md-4"l><"col-sm-12 col-md-4"<"dt-buttons btn-group flex-wrap"B>><"col-sm-12 col-md-4"f>>t<"row"<"col-sm-12 col-md-6"i><"col-sm-12 col-md-6"p>>',
        'buttons': [
            {
                "extend": "copyHtml5",
                "text": "<i class='far fa-copy'></i>",
                "titleAttr":"Copiar",
                "className": "btn btn-primary"
            },{
                "extend": "excelHtml5",
                "text": "<i class='fas fa-file-excel'></i>",
                "titleAttr":"Exportar a Excel",
                "className": "btn btn-primary"
            },{
                "extend": "pdfHtml5",
                "text": "<i class='fas fa-file-pdf'></i>",
                "titleAttr":"Exportar a PDF",
                "className": "btn btn-primary"
            },{
                "extend": "csvHtml5",
                "text": "<i class='fas fa-file-csv'></i>",
                "titleAttr":"Exportar a CSV",
                "className": "btn btn-primary"
            }
        ],
        "bDestroy": true,
        "iDisplayLength": 10,
        "order":[[0,"asc"]]  
    });



    

}


