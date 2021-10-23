<%-- 
    Author: Gustavo Navarrete
--%>

<%@page import="mx.edu.cesba.model.Persona"%>
<%@page import="java.util.List"%>
<%@page import="mx.edu.cesba.dao.PersonaDao"%>
<%@include file="header.jsp" %>

<link rel="stylesheet" href="recursos/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
         
            <!-- /.box -->

            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Lista de Contactos</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Apellido Paterno</th>
                                <th>Apellido Materno</th>
                                <th>Fecha de Nacimiento</th>                               
                                <th>Estatus</th>                               
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        
                        <tbody>
                            
                            <tr>
                                <td>Héctor</td>
                                <td>Suárez
                                </td>
                                <td>Daniel</td>
                                <td> 06/04/1981</td>
                                <td> <span class="label label-success">Activo</span></td>
                                <td>
                                    <button type="button" class="btn btn-default"><i class="fa fa-map"></i></button>
                                    <button type="button" class="btn btn-info"><i class="fa fa-search"></i></button>
                                    <button type="button" class="btn btn-danger"><i class="fa fa-trash"></i></button>
                                </td>
                            </tr>
  
                            <tr>
                                <td>Reyna</td>
                                <td>Castro
                                </td>
                                <td>Pacehco</td>
                                <td> 13/07/1986</td>
                                 <td> <span class="label label-warning">Pendiente</span></td>
                                <td> <button type="button" class="btn btn-danger"><i class="fa fa-trash"></i></button></td>
                            </tr>
                            <tr>
                                <td>Juan</td>
                                <td>Lopez
                                </td>
                                <td>Estrella</td>
                                <td> 27/12/1986</td>
                                 <td> <span class="label label-danger">Inactivo</span></td>
                                 <td>
                                     
                                     
                                 </td>
                            </tr>
                           
                            
                        </tbody>

                    </table>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>
<!-- /.content -->
<%@include file="footer.jsp" %>  

<script src="recursos/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="recursos/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script> 
$(function () {
    $('#example1').DataTable();

  });
  </script>