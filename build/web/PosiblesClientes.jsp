<%-- 
    Document   : PosiblesClientes
    Created on : 2/12/2020, 05:13:36 PM
    Author     : Usuario
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

        <%
            Models.clsPosiblesClientes obclsPosiblesClientes = new Models.clsPosiblesClientes();
            
            if(request.getAttribute("obclsPosiblesClientes") !=null){
                obclsPosiblesClientes = (Models.clsPosiblesClientes)request.getAttribute("obclsPosiblesClientes");
            }
            
            List<Models.clsPosiblesClientes> lstclsPosiblesClientes
                    = new ArrayList<Models.clsPosiblesClientes>();
            if (session.getAttribute("session_lstclsPosiblesClientes") != null) {
                lstclsPosiblesClientes = (List<Models.clsPosiblesClientes>) session.getAttribute("session_lstclsPosiblesClientes");
            }

            if (request.getAttribute("stMensaje") != null && request.getAttribute("stTipo") != null) {
        %>
        <input tpe="text" hidden="" id="txtMensaje"
               value="<%= request.getAttribute("stMensaje")%>" />
        <input tpe="text" hidden="" id="txtTipo"
               value="<%= request.getAttribute("stTipo")%>" />

        <script>
            var mensaje = document.getElementById("txtMensaje").value;
            var tipo = document.getElementById("txtTipo").value;

            swal("Mensaje", mensaje, tipo);
        </script>
        <%
            }
        %>
        <div class="container">
            <div class="card mx-auto mt-5">
                <div class="card-header">Posibles Clientes</div>
                <div class="card-body">
                    <form action="PosiblesClientesController" method="post">
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <input type="submit" name="btnGuardar" value="Guardar" class="btn btn-primary">
                                    <input type="submit" name="btnModificar" value="Modificar" class="btn btn-primary">
                                    <input type="submit" name="btnCancelar" value="Cancelar" class="btn btn-primary">
                                    <a class="btn btn-primary" href="Index.jsp">Volver</a>
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
                                    <input type="text" 
                                           class="form-control" 
                                           placeholder="Empresa" 
                                           name="txtEmpresa" 
                                           value="<%= obclsPosiblesClientes.getStEmpresa() !=null ? obclsPosiblesClientes.getStEmpresa() : ""%>"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblNombre">Nombre</label>
                                    <input type="text" 
                                           class="form-control" 
                                           placeholder="Nombre" 
                                           name="txtNombre"
                                           value="<%= obclsPosiblesClientes.getStNombre()!=null ? obclsPosiblesClientes.getStNombre(): ""%>"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblApellidos">Apellidos</label>
                                    <input type="text" 
                                           class="form-control" 
                                           placeholder="Apellidos" 
                                           name="txtApellidos"
                                           value="<%= obclsPosiblesClientes.getStApellido()!=null ? obclsPosiblesClientes.getStApellido(): ""%>"/>
                                </div>
                                <div class="col-md-3"> 
                                    <label name="lblTitulo">Titulo</label>
                                    <input type="text" 
                                           class="form-control" 
                                           placeholder="titulo" 
                                           name="txtTitulo"
                                           value="<%= obclsPosiblesClientes.getStTitulo()!=null ? obclsPosiblesClientes.getStTitulo(): ""%>"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblCorreoE">Correo Electronico</label>
                                    <input type="email" 
                                           class="form-control" 
                                           placeholder="Email" 
                                           name="txtCorreoE"
                                           value="<%= obclsPosiblesClientes.getStCorreoElectronico()!=null ? obclsPosiblesClientes.getStCorreoElectronico(): ""%>"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblTelefono">Telefono</label>
                                    <input type="text" 
                                           class="form-control" 
                                           placeholder="Telefono" 
                                           name="txtTelefono"
                                           value="<%= obclsPosiblesClientes.getStTelefono()!=null ? obclsPosiblesClientes.getStTelefono(): ""%>"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblFax">Fax</label>
                                    <input type="text" 
                                           class="form-control" 
                                           placeholder="Fax" 
                                           name="txtFax"
                                           value="<%= obclsPosiblesClientes.getStFax()!=null ? obclsPosiblesClientes.getStFax(): ""%>"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblMovil">Movil</label>
                                    <input type="text" 
                                           class="form-control" 
                                           placeholder="Movil" 
                                           name="txtMovil"
                                           value="<%= obclsPosiblesClientes.getStMovil()!=null ? obclsPosiblesClientes.getStMovil(): ""%>"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblSitioWeb">Sitio Web</label>
                                    <input type="text" 
                                           class="form-control" 
                                           placeholder="Web" 
                                           name="txtSitioWeb"
                                           value="<%= obclsPosiblesClientes.getStSitioWeb()!=null ? obclsPosiblesClientes.getStSitioWeb(): ""%>"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblFuentePosibleCliente">Fuente De Posibles Clientes</label>
                                    <select class="form-control" name="ddlFuentePosibleCliente">
                                        <option value="1" <%= obclsPosiblesClientes.obclsFuentePosibleCliente !=null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 1 ? "selected" : "" : "" %>>Ninguno</option>
                                        <option value="2" <%= obclsPosiblesClientes.obclsFuentePosibleCliente !=null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 2 ? "selected" : "" : "" %>>Aviso</option>
                                        <option value="3" <%= obclsPosiblesClientes.obclsFuentePosibleCliente !=null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 3 ? "selected" : "" : "" %>>Llamada no solicitada</option>
                                        <option value="4" <%= obclsPosiblesClientes.obclsFuentePosibleCliente !=null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 4 ? "selected" : "" : "" %>>Recomendacion del empleado</option>
                                        <option value="5" <%= obclsPosiblesClientes.obclsFuentePosibleCliente !=null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 5 ? "selected" : "" : "" %>>Recomendacion externa</option>
                                        <option value="6" <%= obclsPosiblesClientes.obclsFuentePosibleCliente !=null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 6 ? "selected" : "" : "" %>>Tienda en linea</option>
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblEstadoPosibleCliente">Estado De Posibles Clientes</label>
                                    <select class="form-control" name="ddlEstadoPosibleCliente">
                                        <option value="1" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente !=null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 1 ? "selected" : "" : "" %>>Ninguno</option>
                                        <option value="2" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente !=null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 2 ? "selected" : "" : "" %>>Intecto de contacto</option>
                                        <option value="3" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente !=null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 3 ? "selected" : "" : "" %>>Contactar en el futuro</option>
                                        <option value="4" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente !=null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 4 ? "selected" : "" : "" %>>Contactado</option>
                                        <option value="5" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente !=null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 5 ? "selected" : "" : "" %>>Posible cliente no solicitado</option>
                                        <option value="6" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente !=null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 6 ? "selected" : "" : "" %>>Posible cliente perdido</option>
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblSector">Sector</label>
                                    <select class="form-control" name="ddlSector">
                                        <option value="1" <%= obclsPosiblesClientes.obclsSector !=null ? obclsPosiblesClientes.obclsSector.getInSector() == 1 ? "selected" : "" : "" %>>Ninguno</option>
                                        <option value="2" <%= obclsPosiblesClientes.obclsSector !=null ? obclsPosiblesClientes.obclsSector.getInSector() == 2 ? "selected" : "" : "" %>>APS(Proveedor de servicios de aplicaciones)</option>
                                        <option value="3" <%= obclsPosiblesClientes.obclsSector !=null ? obclsPosiblesClientes.obclsSector.getInSector() == 3 ? "selected" : "" : "" %>>OEM de datos</option>
                                        <option value="4" <%= obclsPosiblesClientes.obclsSector !=null ? obclsPosiblesClientes.obclsSector.getInSector() == 4 ? "selected" : "" : "" %>>ERP(Planificacion de recursos de empresa)</option>
                                        <option value="5" <%= obclsPosiblesClientes.obclsSector !=null ? obclsPosiblesClientes.obclsSector.getInSector() == 5 ? "selected" : "" : "" %>>Gobierno/Ejercito</option>
                                        <option value="6" <%= obclsPosiblesClientes.obclsSector !=null ? obclsPosiblesClientes.obclsSector.getInSector() == 6 ? "selected" : "" : "" %>>Empresa grande</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblCorreoE">Cantidad de empleados</label>
                                    <input type="number" 
                                           class="form-control" 
                                           placeholder="Cantidad de empleados" 
                                           name="txtCantidadEmpleados"
                                           value="<%= obclsPosiblesClientes.getInCantidadEmpleados()!= 0 ? obclsPosiblesClientes.getInCantidadEmpleados(): ""%>"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblTelefono">Ingresos anuales</label>
                                    <input type="number" 
                                           class="form-control" 
                                           placeholder="Ingresos anuales" 
                                           name="txtIngresosanuales"
                                           value="<%= obclsPosiblesClientes.getDbIngresosAnuales()!= 0 ? obclsPosiblesClientes.getDbIngresosAnuales(): ""%>"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblCalificaion">Calificacion</label>
                                    <select class="form-control" name="ddlCalificacion">
                                        <option value="1" <%= obclsPosiblesClientes.obclsCalificacion !=null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 1 ? "selected" : "" : "" %>>Ninguno</option>
                                        <option value="2" <%= obclsPosiblesClientes.obclsCalificacion !=null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 2 ? "selected" : "" : "" %>>Adquirido</option>
                                        <option value="3" <%= obclsPosiblesClientes.obclsCalificacion !=null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 3 ? "selected" : "" : "" %>>Activo</option>
                                        <option value="4" <%= obclsPosiblesClientes.obclsCalificacion !=null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 4 ? "selected" : "" : "" %>>Fallo del mercado</option>
                                        <option value="5" <%= obclsPosiblesClientes.obclsCalificacion !=null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 5 ? "selected" : "" : "" %>>Proyecto cancelado</option>
                                        <option value="6" <%= obclsPosiblesClientes.obclsCalificacion !=null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 6? "selected" : "" : "" %>>Apagar</option>
                                    </select>
                                </div>

                                <div class="col-md-3">
                                    <label name="lblNoParticipacionCorreoElectronico"> 
                                        <input type="checkbox" 
                                               name="chkNoParticiacionCorreoElectronico"
                                               <%= obclsPosiblesClientes.getChNoParticipacionCorreoElectronico() == 'S' ? "checked" : "" %>/>
                                        No participacion correo electronico
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblIDSkype">ID de Skype</label>
                                    <input type="text" 
                                           class="form-control" 
                                           placeholder="Skype" 
                                           name="txtIDSkype"
                                           value="<%= obclsPosiblesClientes.getStIDSkype()!= null ? obclsPosiblesClientes.getStIDSkype(): ""%>"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblTwitter">Twitter</label>
                                    <input type="text" 
                                           class="form-control" 
                                           placeholder="Twitter" 
                                           name="txtTwitter"
                                           value="<%= obclsPosiblesClientes.getStTwitter()!= null ? obclsPosiblesClientes.getStTwitter(): ""%>"/>
                                </div>
                                <div class="col-md-6">
                                    <label name="lblCorreoElectronicoSecundario">Correo electronico secundario</label>
                                    <input type="email" 
                                           class="form-control" 
                                           placeholder="Correo electronico secundario" 
                                           name="txtCorreoElectronicoSecundario"
                                           value="<%= obclsPosiblesClientes.getStCorreoElectronicoSecundario()!= null ? obclsPosiblesClientes.getStCorreoElectronicoSecundario(): ""%>"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-control">
                            <div class="form-row">
                                <div class="col-12">
                                    <b>
                                        <i class="fa fa-clipboard"></i>
                                        Registros: <%= lstclsPosiblesClientes.size()%>
                                    </b>
                                </div>
                            </div>
                        </div>

                        <div class="form-control">
                            <div class="form-row">
                                <div class="col-12">
                                    <table class="table table-bordered table-success table-responsive">
                                        <tr>
                                            <td>Empresa</td>
                                            <td>Nombre</td>
                                            <td>Apellidos</td>
                                            <td>Titulo</td>
                                            <td>Correo Electronico</td>
                                            <td>Telefono</td>
                                            <td>Fax</td>
                                            <td>Movil</td>
                                            <td>Sitio web</td>
                                            <td>Fuente posible cliente</td>
                                            <td>Estado De Posibles Clientes</td>
                                            <td>Sector</td>
                                            <td>Cantidad de empleados</td>
                                            <td>Ingresos anuales</td>
                                            <td>Calificacion</td>
                                            <td>No participacion correo electronico</td>
                                            <td>ID de Skype</td>
                                            <td>Twitter</td>
                                            <td>Correo electronico secundario</td>
                                        </tr>
                                        <%
                                            for (Models.clsPosiblesClientes item : lstclsPosiblesClientes) {
                                                Models.clsFuentePosibleCliente obclsFuentePosibleCliente = item.getObclsFuentePosibleCliente();
                                                Models.clsEstadoPosibleCliente obclsEstadoPosibleCliente = item.getObclsEstadoPosibleCliente();
                                                Models.clsSector obclsSector = item.getObclsSector();
                                                Models.clsCalificacion obclsCalificacion = item.getObclsCalificacion();
                                        %>       
                                        <tr>
                                            <td><%= item.getStEmpresa()%></td>
                                            <td><%= item.getStNombre()%></td>
                                            <td><%= item.getStApellido()%></td>
                                            <td><%= item.getStTitulo()%></td>
                                            <td><%= item.getStCorreoElectronico()%></td>
                                            <td><%= item.getStTelefono()%></td>
                                            <td><%= item.getStFax()%></td>
                                            <td><%= item.getStMovil()%></td>
                                            <td><%= item.getStSitioWeb()%></td>
                                            <td><%= obclsFuentePosibleCliente.getStDescripcion()%></td>
                                            <td><%= obclsEstadoPosibleCliente.getStDescripcion()%></td>
                                            <td><%= obclsSector.getStDescripcion()%></td>
                                            <td><%= item.getInCantidadEmpleados()%></td>
                                            <td><%= item.getDbIngresosAnuales()%></td>
                                            <td><%= obclsCalificacion.getStDescripcion()%></td>
                                            <td><%= item.getChNoParticipacionCorreoElectronico()%></td>
                                            <td><%= item.getStIDSkype()%></td>
                                            <td><%= item.getStTwitter()%></td>
                                            <td><%= item.getStCorreoElectronicoSecundario()%></td>
                                            
                                            <td>
                                                <a class="btn btn-success btn-sm"
                                                   href="PosiblesClientesController?stOpcion=M&codigoSeleccionado=<%=item.getInCodigo()%>">
                                                    Modificar</a>
                                                
                                                <a class="btn btn-danger btn-sm"
                                                   href="PosiblesClientesController?stOpcion=E&codigoSeleccionado=<%=item.getInCodigo()%>">
                                                    Eliminar</a>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </table>
                                </div>
                            </div>
                        </div>  
                    </form>
                </div>
            </div>
        </div>
</body>
</html>
