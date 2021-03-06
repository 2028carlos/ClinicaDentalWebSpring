<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Person Page</title>
		<link href="<c:url value="/resources/css/demo.css" />" rel="stylesheet">
	
	  <link type="text/css" rel="stylesheet" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"/>
	  <link href="<c:url value="/resources/Scripts/plugin/css/jquery-ui.css" />" rel="stylesheet">
	   <link href="<c:url value="/resources/client_components/css/default.css" />" rel="stylesheet">
              <link href="<c:url value="/resources/Scripts/plugin/css/alertify.min.css" />" rel="stylesheet">
            <link href="<c:url value="/resources/Scripts/app/css/LineaText.css" />" rel="stylesheet">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <link href="<c:url value="/resources/administration_components/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
             <link href="<c:url value="/resources//administration_components/css/AdminLTE.min.css" />" rel="stylesheet">
              <link href="<c:url value="/resources/administration_components/css/ionicons.min.css" />" rel="stylesheet">
        
     <link href="<c:url value="/resources/administration_components/css/ionicons.min.css" />" rel="stylesheet">
       <link href="<c:url value="/resources/administration_components/css/skin-blue.min.css" />" rel="stylesheet">
       
	<!-- Table editable  -->
	 <link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.1/normalize.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css">
  <link href="<c:url value="/resources/Scripts/app/css/tableeditable.css" />" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"/>
      <style type="text/css">
      .error{
      color: #F64C46  ;
      }
      </style>
	

	 
	 
	           <script type="text/javascript" src="<c:url value="/resources/Scripts/plugin/js/jquery.min.js" />"></script>
	            <script type="text/javascript" src="<c:url value="/resources/Scripts/plugin/js/jquery-ui.js" />"></script>
	   <script type="text/javascript"  src="<c:url value="/resources/Scripts/plugin/js/bootstrap.min.js" />"></script>
   <script  src="<c:url value="/resources/administration_components/js/adminlte.min.js" />"></script>
             <script src=" //cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">



	 <!-- Main Header -->
    <header class="main-header">
        <!-- Logo -->
        <a href="index2.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>C</b>D</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>Clinica </b>Dental</span>
        </a>
        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                  
                    <!-- /.messages-menu -->
                    <!-- Notifications Menu -->
                   
                  


                   
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                          <!--   <img src="~/dist/img/user2-160x160.jpg" class="user-image" alt="User Image"> -->
                            <!-- NOMBRE DE USUARIO -->
                          
                         <!--  <p:messages autoUpdate="false" showDetail="true" showSummary="true"/> --> 
                          	
                            
                        </a>
                          
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header">
                                <!-- <img src="~/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"> -->

                                <p>
                                  
                                    <small>Administrador</small>
                                </p>


                            </li>
                         
                                <!-- Menu Body -->
                        
                                    <!-- Menu Footer-->
                                    <li class="user-footer">

                                        <div class="col-md-3">
                                            <a href="javascript:document.getElementById('logoutForm').submit()" class="btn btn-default btn-flat">Cerrar Sesi�n</a>
                                        </div>
                                    </li>
                          
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                  
                </ul>
            </div>
        </nav>
    </header>	
	





    <!-- MENU VERTICAL -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel (optional) -->
           
          <!--   Buscar form (Optional) -->
            
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                <!--    <input type="text" name="q" class="form-control" placeholder="Search..."/> -->
                    <span class="input-group-btn">
                           <!-- <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                            <i class="fa fa-search"></i>
                        </button> -->
                      
                    </span>
                </div>
            </form>

            <!-- /.search form -->
            <!-- Sidebar Menu -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">Inicio</li>
                <!-- Optionally, you can add icons to the links -->

                <li class="active"> <a   href="./administracion"> <span>Inicio</span></a></li>
        
                
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-link"></i> <span>Servicios</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                    
                        <li><a  href="./servicio">Servicio</a></li>
<!--                         <li><a  href="../UIClinicaAdministration/NewServicio.jsf">Agregar Servicio</a></li> -->
                    </ul>
                </li>


                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-link"></i> <span>Trabajadores</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                         <li><a  href="./trabajador">Trabajadores</a></li>
<!--                           <li><a  href="../UIClinicaAdministration/NewTrabajador.jsf">Agregar Trabajador</a></li> -->
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-link"></i> <span>Citas</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a  href="./citas">Citas Actuales</a></li>
<!--                         <li><a   href="../UIClinicaAdministration/NewCita.jsf">Agregar Cita</a></li> -->
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-link"></i> <span>Pacientes</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                       <li><a  href="./paciente">Paciente</a></li>
<!--                         <li><a   href="./paciente">Agregar Paciente</a></li> -->

                    </ul>
                </li>
                
                  

              <li class="header">Control Administrativo</li>


                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-link"></i> <span>Roles</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a  href="./ListarRoles">Roles</a></li>
                       

                    </ul>
                </li>

                 <li class="treeview">
                    <a href="#">
                        <i class="fa fa-link"></i> <span>Itinerario</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a  href="./ListarItinerario">Itinerario</a></li>
                       

                    </ul>
                </li>



                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-link"></i> <span>Medicos</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a  href="./ListarMedico">Medicos</a></li>
                       

                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-link"></i> <span>Usuarios</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a  href="./ListarUsuario">Usuarios</a></li>
                       

                    </ul>
                </li>


            </ul>
            <!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
    </aside>
 
  
  <!-- DESDE ACA CONTENT -->
  <div class="content-wrapper">
    <!-- Content Header (Hora y fecha) -->
    <section class="content-header">

        <h1 id="txtFecha" style="color:darkred; font-size: 20px; padding-top:10px;"></h1>



        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
            <li class="active">Carpeta</li>
        </ol>
    </section>



<!-- *****************************************************************************************+ -->
    <!-- Main content -->
    <section class="content container-fluid">
       
        <div class="row">
            <div class="col-md-12">
                <div class="box">

                    <div class="box-header with-border">
                        <h3 class="box-title">Citas Actuales</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                <i class="fa fa-minus"></i>
                            </button>
                           
                            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                        </div>
                    </div>

                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">


                   <div class="col-md-12">
                  
                        
   


		 <c:if test="${!empty listaCita}">
                <table  id="tablaCit">
                    <thead>
                        <tr>
                          <th width="80">Id</th>
				<th width="120">Fecha de Cita</th>
				<th width="120">Nombres</th>
				<th width="120">Apellidos</th>
				
				<th width="60">Tel�fono</th>
					<th width="60">Direccion</th>
						<th width="60">G�nero </th>
						
								<th width="60">Fecha de Naciemieto   </th>
				
							<th width="60">Opciones  </th>
                        </tr>
                    </thead>
                    <tbody class="resu">
                   
                   <c:forEach items="${listaCita}" var="libro">
				<tr class="tr">
					<td class="codigo" >${libro.citaid}</td>
					<td class="fecita" data-field="fecita">${libro.fechacita}</td>
					<td class="nombre">${libro.nombre}</td>
						<td class="apellido" >${libro.apellido}</td>
					<td >${libro.telefono}</td>
							
					<td>${libro.direccion}</td>
							<td >${libro.genero}</td>
					<td >${libro.fechanac}</td>
					<td><button class="button button-small edit" title="Edit"><i class="fa fa-pencil"></i></span></button> <button class="button button-small eliminar" ><span title="Eliminar" class="glyphicon glyphicon-trash"></span></button>		
					
<%-- 					<td><a href="<c:url value='/updatePerson/${libro.citaid}' />">Edit</a>|<a href="<c:url value='/eliminarServicio/${libro.citaid}' />">Eliminar</a></td> --%>
					
				</tr>
			</c:forEach>
                   
                   
 
                    </tbody>
                </table>
                	
	</c:if>
   
   
                                <div class="chart">
                                    <!-- Sales Chart Canvas -->
                                    <canvas id="salesChart" style="height: 180px;"></canvas>
                                </div>
                                <!-- /.chart-responsive -->
                            </div>


                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- ./box-body -->
                    <!-- /.box-footer -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>

        <!--HASTA ACA PAPRTE DINAMICA -->


    </section>
</div>
  





  <!-- Modal -->
  <div class="modal fade" id="myModalServicio" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Agregar Citas</h4>
        </div>
        <div class="modal-body">
         
   <form id="formRegistropac" >	
		  <div class="row">
                    <div class="col-md-5">
                        <b id="">Tipo de Documento:</b><br/>
                        	<select data-rule-required="true" name="combo" class="cbo" id="tipo" >
			    <option value= "1">Dni</option>
				<option value ="2">Carnet de Extranjeria</option>
			               </select>
                    
                    </div>
                    
                     <div class="col-md-5">
                        <b id="">N�mero de Documento:</b><br/>
	                  <input data-rule-required="true" data-rule-validByItem="true" name="myCode" id="numdoc" class="numdoc textbox1" placeholder="Ingresa n�mero de documento " />
                     <label id="sms"></label>
                    </div>

          </div><br/>
					
		<div class="row">
                  <div class="col-md-5">

                        <b id="">Nombres:</b><br/>
                     <input data-rule-required="true" name ="nom" class="textbox1"  id="nom" placeholder ="Ingresa Nombres " />
                        
                    </div>

                    <div class="col-md-5">
                        <b id="label">Apellidos:</b><br/>
	                   
                       <input data-rule-required="true" name ="ape" class="textbox1" id="ape" placeholder ="Ingresa Apellidos " />

                    </div>
          </div><br/>
		  <div class="row">
                    <div class="col-md-5">
                        <b id="">Direcci�n:</b><br/>
                
                        <input data-rule-required="true" name="dir" class="textbox1" id="dir" placeholder =" Ingresa Direcci�n " />
                    </div>

                    <div class="col-md-5">
                        <b id="label">Tel�fono:</b><br/>
                         <input data-rule-required="true" name="tel" class="textbox1" id="tel" placeholder =" Ingresa Tel�fono" />

                    </div>
           </div><br/>
					
			<div class="row">
                    <div class="col-md-5">
                        <b id="">Fecha de Nacimiento:</b><br/>
                 <input data-rule-required="true" name="nacd" class="textbox1" id="nac"  placeholder ="Ingrea Fecha de Nacimiento"/>
					 
                 
                    </div>


                  <div class="col-md-5">
                        <b id="">Genero:</b><br/>
               <select data-rule-required="true" name ="gene" class="cbo" id ="gen">
			<option value="M">Masculino</option>
			<option value ="F">Femenino</option>
			</select>
                 
                    </div>
                 

                   
                </div>	<br/>
                
                <div class="row">
                    <div class="col-md-5">
                        <b id="">Fecha de Cita:</b><br/>
                  <input  data-rule-required="true" name="fecc" class="textbox1" id="cita" placeholder ="Ingresa Fecha de la cita" />
					 
                 
                    </div>


                  
                 

                   
                </div>	<br/>
       				
			</form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               <input class="btn btn-info" type="submit" id="Enviar12"  value="enviar"/>
        </div>
      </div>
      
    </div>
  </div>
  

	  <script type="text/javascript" src="<c:url value="/resources/Scripts/app/js/jquery.citasactuales.js" />"></script>
	       <!-- Validaciones -->
	  
  <script type="text/javascript"  src="<c:url value="/resources/Scripts/plugin/js/jquery.validate.min.js" />"></script>
    <script type="text/javascript"  src="<c:url value="/resources/Scripts/plugin/js/messages_es.js" />"></script>
  <script type="text/javascript"  src="<c:url value="/resources/Scripts/plugin/js/blockui.min.js" />"></script>
   <script type="text/javascript"  src="<c:url value="/resources/Scripts/plugin/js/alertify.min.js" />"></script>
     <script type="text/javascript"  src="<c:url value="/resources/Scripts/app/js/jquery.master.js" />"></script>
	  
	  <!-- Table editable -->
	   <script type="text/javascript" src="<c:url value="/resources/Scripts/plugin/js/table-edits.min.js" />"></script>
      <script type="text/javascript">
      $('table tr').editable({
          keyboard: false,

          dblclick: true,
          button: true,   


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
              
//               var id = $(this).data('id');
//               $.post('updateCita' + id, values);
           


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


      function Update() {

          var empObj = {
              citaid: id,
              fecita: name
             

          };


          $.ajax({
              url: "updateCita",
              data: empObj,
              type: "POST",
            
            
              success: function (result) {

            	  jQuery.fn.MasterMainPage("messagealert", "update");

                  // jQuery.fn.MasterMainPage("fn_PartialLoader", $("#tablaCit"), "hide");
              },
              error: function (errormessage) {
                  alert("nO");
              }
          });
      }

      
      $('.eliminar').click(function () {
    	  obj = $(this).parents('.tr');
          id = obj.find('.codigo').text();
          name= obj.find('.nombre').text();
          ape= obj.find('.apellido').text();
    	    Delete();
    	});
      
      function Delete() {
    	    var ans = confirm("Ud. Eliminara la cita de  "+name+" "+ ape+" ?");
    	    var eliminacita = {
    	              citaid: id
    	             
    	          };

    	    
    	    if (ans) {
    	        $.ajax({
    	            url: "eliminaCita",
    	            data: eliminacita,
    	            type: "POST",
    	          
    	            success: function (result) {
    	           
    	            	window.location='./citas'; 
    	            	
    	            },
    	            error: function (errormessage) {
    	                alert(errormessage.responseText);
    	            }
    	        });
    	    }
    	}
      
      </script>
	  
</body>
</html>
