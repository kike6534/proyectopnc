/*
 Template Name: Admiria - Bootstrap 4 Admin Dashboard
 Author: Themesbrand
 File: Dashboard Init
*/


!function($) {
    "use strict";

    var Dashboard = function() {};

    Dashboard.prototype.init = function () {

        // Peity line
        $('.peity-line').each(function() {
            $(this).peity("line", $(this).data());
        });

        //Knob chart
        $(".knob").knob();

        //C3 combined chart
        c3.generate({
            
            bindto: '#combine-chart',
           
            data: {
                columns: [
                    ['Policias', 30, 220, 50, 40, 60, 50],
                    ['Permisos', 200, 130, 90, 240, 130, 220],
                    ['Salidas', 300, 200, 160, 400, 250, 250]
                ],
                types: {
                    Policias: 'bar',
                    Permisos: 'bar',
                    Salidas: 'spline',
                },
                colors: {
                    Policias: '#5468da',
                    Permisos: '#4ac18e',
                    Salidas: '#ffbb44'
                },
                groups: [
                    ['Policias','Permisos']
                ]
            },
            axis: {
                x: {
                    type: 'categorized'
                }
            }
        });

        //C3 Donut Chart
        c3.generate({
            
            bindto: '#donut-chart',
            data: {
                columns: [
                    ['Activos', 1],
                    ['Inactivos', 1]
                ],
                type : 'donut'
            },
            donut: {
                title: "Tasa proporcional",
                width: 30,
                label: {
                    show:false
                }
            },
            color: {
                pattern: ["#5468da", "#4ac18e","#6d60b0"]
            }
        });

    },
        $.Dashboard = new Dashboard, $.Dashboard.Constructor = Dashboard

}(window.jQuery),

//initializing
    function($) {
        "use strict";
        $.Dashboard.init()
    }(window.jQuery);