var tableRoles; 
var divLoading = document.querySelector('#divLoading'); 
document.addEventListener('DOMContentLoaded', function(){ 
    cargar_datos(); 
 
 
//Marta Gloria Campos Guzman 
}); 
function cargar_datos(){ 
    mostrar_mensaje("Cargando", "Obteniendo datos"); 
    var datos = {"consultar_info":"si_consultala"} 
    $.ajax({ 
        dataType: "json", 
        method: "POST", 
        url: base_url+"/Consultas/getllamadaemergencia", 
        data : datos, 
    }).done(function(json) { 
        console.log("EL consultar",json); 
        $("#datos_tabla_llamadaemergencia").empty().html(json.htmlDatosTabla); 
        inicializar_tabla("tablellamadaemergencia"); 
    }).fail(function(){ 
    console.log("mal");
    }).always(function(){ 
        Swal.close(); 
    }); 
} 
 

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
      } //result confirm
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
            "sEmptyTable": "Ningún dato disponible en esta tabla",
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
                "sLast": "Último",
                "sNext": "Siguiente",
                "sPrevious": "Anterior"
            }
        },
        "columns":[
            {"data":"num_oni"}, 
            {"data":"nombreagente"}, 
            {"data":"tipo_sangre"}, 
            {"data":"nombrefamiliar"},
            {"data":"telefono"}, 
            
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