<%-- 
    Document   : PosiblesClientes
    Created on : 2/12/2020, 05:13:36 PM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Posibles clientes</title>
        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        
        <link href="css/sweetalert.css" rel="stylesheet" type="text/css">
        <script src="js/sweetalert.min.js" type="text/javascript"></script>
        
    </head>
    <body>
        <div class="container">
            <div class="card mx-auto mt-5">
                <div class="card-header">Posibles Clientes</div>
                <div class="card-body">
                    <form action="PosiblesClientesController" method="post">
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <input type="submit" value="Guardar" class="btn btn-primary">
                                    <input type="submit" value="Modificar" class="btn btn-primary">
                                    <input type="submit" value="Cancelar" class="btn btn-primary">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-12">
                                    <h1>Informacion de posibles clientes</h1>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblEmpresa">Empresa</label>
                                    <input type="text" class="form-control" placeholder="Empresa" name="txtEmpresa"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblNombre">Nombre</label>
                                    <input type="text" class="form-control" placeholder="Nombre" name="txtNombre"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblApellidos">Apellidos</label>
                                    <input type="text" class="form-control" placeholder="Apeliidos" name="txtApellidos"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblTitulo">Titulo</label>
                                    <input type="text" class="form-control" placeholder="titulo" name="txtTitulo"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblCorreoE">Correo Electronico</label>
                                    <input type="email" class="form-control" placeholder="Email" name="txtCorreoE"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblTelefono">Telefono</label>
                                    <input type="number" class="form-control" placeholder="Telefono" name="txtTelefono"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblFax">Fax</label>
                                    <input type="text" class="form-control" placeholder="Fax" name="txtFax"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblMovil">Movil</label>
                                    <input type="number" class="form-control" placeholder="Movil" name="txtMovil"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblSitioWeb">Sitio Web</label>
                                    <input type="text" class="form-control" placeholder="Web" name="txtSitioWeb"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblFuentePosibleCliente">Fuente De Posibles Clientes</label>
                                    <select class="form-control" name="ddlFuentePosibleCliente">
                                        <option value="1">Ninguno</option>
                                        <option value="2">Aviso</option>
                                        <option value="3">Llamada no solicitada</option>
                                        <option value="4">Recomendacion del empleado</option>
                                        <option value="5">Recomendacion externa</option>
                                        <option value="6">Tienda en linea</option>
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblEstadoPosibleCliente">Estado De Posibles Clientes</label>
                                    <select class="form-control" name="ddlEstadoPosibleCliente">
                                        <option value="1">Ninguno</option>
                                        <option value="2">Intecto de contacto</option>
                                        <option value="3">Contactar en el futuro</option>
                                        <option value="4">Contactado</option>
                                        <option value="5">Posible cliente no solicitado</option>
                                        <option value="6">Posible cliente perdido</option>
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblSector">Sector</label>
                                    <select class="form-control" name="ddlSector">
                                        <option value="1">Ninguno</option>
                                        <option value="2">APS(Proveedor de servicios de aplicaciones)</option>
                                        <option value="3">OEM de datos</option>
                                        <option value="4">ERP(Planificacion de recursos de empresa)</option>
                                        <option value="5">Gobierno/Ejercito</option>
                                        <option value="6">Empresa grande</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblCorreoE">Cantidad de empleados</label>
                                    <input type="number" class="form-control" placeholder="Cantidad de empleados" name="txtCantidadEmpleados"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblTelefono">Ingresos anuales</label>
                                    <input type="number" class="form-control" placeholder="Ingresos anuales" name="txtIngresosanuales"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblCalificaion">Calificacion</label>
                                    <select class="form-control" name="ddlCalificacion">
                                        <option value="1">Ninguno</option>
                                        <option value="2">Adquirido</option>
                                        <option value="3">Activo</option>
                                        <option value="4">Fallo del mercado</option>
                                        <option value="5">Proyecto cancelado</option>
                                        <option value="6">Apagar</option>
                                    </select>
                                </div>

                                <div class="col-md-3">
                                    <label name="lblNoParticipacionCorreoElectronico"> 
                                        <input type="checkbox" name="chkNoParticiacionCorreoElectronico"/>
                                        No participacion correo electronico
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblIDSkype">ID de Skype</label>
                                    <input type="text" class="form-control" placeholder="Skype" name="txtIDSkype"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblTwitter">Twitter</label>
                                    <input type="text" class="form-control" placeholder="Twitter" name="txtTwitter"/>
                                </div>
                                <div class="col-md-6">
                                    <label name="lblCorreoElectronicoSecundario">Correo electronico secundario</label>
                                    <input type="email" class="form-control" placeholder="Correo electronico secundario" name="txtCorreoElectronicoSecundario"/>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
