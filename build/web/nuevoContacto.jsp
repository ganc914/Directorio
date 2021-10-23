<%-- 
    Document   : nuevoContacto
    Created on : 9/10/2021, 01:02:36 PM
    Author     : hsuarez
--%>

<%@include file="header.jsp" %>

 <link rel="stylesheet" href="recursos/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Agregar Nuevo Contacto

    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">


    <div class="row">
        <section class="col-lg-12 ">
            <div class="box box-info">
                <div class="box-header">
                    <i class="fa fa-user"></i>

                    <h3 class="box-title">Datos Personales</h3>
                    <!-- tools box -->
                    <!-- /. tools -->
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-user"></i>
                                </span>
                                <input type="text" class="form-control" placeholder="Nombre" id="nombre" name="nombre">
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-user"></i>
                                </span>
                                <input type="text" class="form-control" placeholder="Apellido Paterno" id="ap" name="ap">
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-user"></i>
                                </span>
                                <input type="text" class="form-control" placeholder="Apellido Materno" id="am" name="am">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="form-group">
                                <label>Date:</label>

                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right" id="datepicker">
                                </div>
                                <!-- /.input group -->
                            </div>
                        </div>
                    </div>
                     <div class="row">
                         <div class="col-lg-8"></div>
                         <div class="col-lg-2">
                             <button type="button" class="btn btn-block btn-danger">Cancelar</button>
                         </div>
                         <div class="col-lg-2">
                             <button type="button" class="btn btn-block btn-success">Guardar</button>
                         </div>
                     </div>


                </div>

            </div>
        </section>

        <!-- right col -->
    </div>
    <!-- /.row (main row) -->

</section>
<!-- /.content -->
<%@include file="footer.jsp" %> 
<script src="recursos/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script>
  $(function () {
      $('#datepicker').datepicker({
      autoclose: true
    });
  });
  </script>