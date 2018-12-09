$(document).ready(function () {
    //loadData();
    jQuery.fn.MasterMainPage("fn_PartialLoader", $("#tablaCit"), "show");
});


$('body').on('click', '.eliminar', function () {
    obj = $(this).parents('.tr');
    var docu = obj.find('.codigo').text();
    Delete(docu);
});

$('body').on('dblclick', '.resu', function () {
 


    $("#cbo").select2({ width: '70%' });
   

});

var obj1;
$('body').on('click', 'td', function () {
    obj1 = $(this).parents('.fila1');
    var docu = obj1.find('.codigo').text();
    obj1.find('.name').attr('data-field', 'nombre');
    obj1.find('.ape').attr('data-field', 'ape');
    obj1.find('.gen').attr('data-field', 'generoid');
    
});

$('body').on('click', 'td', function () {
    obj = $(this).parents('.fila2');

    
    obj1.find('.name').removeAttr('data-field', 'nombre');
    obj1.find('.ape').removeAttr('data-field', 'ape');
    obj1.find('.gen').removeAttr('data-field', 'generoid');

});






$('body').on('click', '.edit', function () {
    $("#cbo").select2({ width: '70%' });
    //$('.save').removeAttr('disabled');
});


$('#Agregar').click(function () {

    Add();

})

////Obtener datos para poder Actualizar con ajax
var id = "";
var name = "";
var ape = "";
var gen = "";



$('body').on('click', '.actualizar', function () {
    obj = $(this).parents('.tr');
    id = obj.find('.codigo').text();
    name = obj.find('.fecita').text();
   
    Update();
    //$('.save').attr('disabled',true);
});




//var array = ['uno', 'dos', 'tres'];

function loadData() {
  
    $.ajax({
        url: "/Account/Persona/",
        type: "GET",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {
            var DATOS = '';
            var i = 0;
            $.each(result, function (key, item) {
                i++;
                DATOS += '<tr class="tr fila'+i+'">';
                DATOS += '<td  class="codigo" >' + item.codigo + '</td>';
                DATOS += '<td  class="name">' + item.nombre + '</td>';
                DATOS += '<td   class="ape">' + item.ape + '</td>';
                DATOS += '<td  class="gen">' + item.descripcion + '</td>';
                DATOS += '<td><button class="button button-small edit" title="Edit"><i class="fa fa-pencil"></i></span></button> <button class="button button-small eliminar" ><span title="Eliminar" class="glyphicon glyphicon-trash"></span></button>';

                DATOS += '</tr>';
            });
          jQuery.fn.MasterMainPage("fn_PartialLoader", $("#tablaCit"), "hide");
            $('.resu').html(DATOS);
            $('table tr').editable({
                keyboard: false,

                dblclick: true,
                button: true,   

                dropdowns: {
                    generoid: array
                },

                edit: function (values) {
                    $(".edit i", this)
                      .removeClass('fa-pencil')
                      .addClass('fa-save')
                      .attr('title', 'Save');

                    $('.eliminar', this)
                    .attr('disabled', true);

                    $(".edit", this)
                      .addClass('actualizar');

                },

                save: function (values) {
                    $(".edit i", this)
                      .removeClass('fa-save')
                      .addClass('fa-pencil')
                      .attr('title', 'Edit');
                    $('.eliminar', this)
                   .removeAttr('disabled');


                    $(".edit i", this)
                     .removeClass('actualizar');

                 


                },
                cancel: function (values) {
                    $(".edit i", this)
                      .removeClass('fa-save')
                      .addClass('fa-pencil')
                      .attr('title', 'Edit');


                }

                //save: function (values) {

                //    var id = $(this).data('id');

                //    $.post("/Account/UpdatePersona/" + id, values);


                //}  
            });

        },
        error: function (errormessage) {
            alert("NO se puede tablaCitr");
        }
    });
}




function Add() {

    var empObj = {
        nombre: $('#nom').val(),
        ape: $('#ape').val(),
        generoid: $('#cbo').val()

    };

    $.ajax({
        url: "/Account/AddPersona",
        data: JSON.stringify(empObj),
        type: "POST",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {

            // jQuery.fn.MasterMainPage("fn_PartialLoader", $("#formAdd"), "show");
            $('#myModal').modal('hide');
            loadData();

        },
        error: function (errormessage) {
            alert(errormessage.responseText);

        }
    });
}





function Update() {

    var empObj = {
        citaid: id,
        fecita: name
       

    };


    $.ajax({
        url: "updateCita",
        data: JSON.stringify(empObj),
        type: "POST",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {



            // jQuery.fn.MasterMainPage("fn_PartialLoader", $("#tablaCit"), "hide");
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
}




var array = [];
function combo() {

    $.ajax({
        url: "/Workers/ListGen/",
        type: "GET",
        contentType: "application/json;charset=UTF-8",
        dataType: "json",
        success: function (data) {

            $.each(data, function (key, value) {
                // combo.generoid = value.generoid;
                var combo = value.descripcion;
                array.push(combo);


                var option = $(document.createElement('option'));
                option.html(value.descripcion);
                option.val(value.generoid);
                $(".cbo").append(option);





            })



        },
        error: function (errormessage) {
            alert("Error ");
        }
    });
}


//function for deleting employee's record
function Delete(ID) {
    var ans = confirm("Desea Eliminar?");
    if (ans) {
        $.ajax({
            url: "eliminaCita" + ID,
            type: "POST",
            contentType: "application/json;charset=UTF-8",
            dataType: "json",
            success: function (result) {
                loadData();
            },
            error: function (errormessage) {
                alert(errormessage.responseText);
            }
        });
    }
}
