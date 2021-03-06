<%-- 
    Document   : index
    Created on : 28/05/2020, 09:32:25 AM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="Dto.Tienda" %>
<%@page import="Negocio.Tiendas" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
        <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"  crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/card.css">
        <link rel="stylesheet" href="css/Stile.css">
        <script src="js/myScritp.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


        <title>Inicio</title>
    </head>
    <body> 
        
        <div class="row">
            <section class="col-md-8 ">

                <section id="team" class="pb-5">
                    <div class="container">
                        <h5 class="section-title h1">SERVICIOS</h5>

                        <div class="row">
                             <jsp:useBean id="t" class="Negocio.Tiendas"/>
                             <c:forEach var="ti" items="${t.getTienda()}">
                            <!-- Team member -->
                            <div class="col-xs-12 col-sm-6 col-md-4">
                                <div class="image-flip" >
                                    <div class="mainflip flip-0">
                                        <div class="frontside">
                                            <div class="card">
                                                <div class="card-body text-center">
                                                    <p><img class=" img-fluid" src="<c:out value="${ti.imagen}"/>" alt="card image"></p>
                                                    <h4 class="card-title"><c:out value="${ti.nombre}"/></h4>
                                                    <p class="card-text"><c:out value="${ti.lema}"/></p>
                                                    <a href="https://www.fiverr.com/share/qb8D02" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                                    
                                        <div class="backside">
                                            <div class="card">
                                                <div class="card-body text-center mt-4">
                                                    <h4 class="card-title"><c:out value="${ti.propietario}"/></h4>
                                                    <p class="card-text"><c:out value="${ti.descripcion}"/></p>
                                                    <ul class="list-inline">
                                                        <li class="list-inline-item">
                                                            <a class="social-icon text-xs-center" target="_blank" href="<c:out value="${ti.facebook}"/>">
                                                                <i class="fa fa-facebook"></i>
                                                            </a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a class="social-icon text-xs-center" target="_blank" href="<c:out value="${ti.web}"/>">
                                                                <i class="fa fa-google"></i>
                                                            </a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a class="social-icon text-xs-center" target="_blank" href="https://www.youtube.com">
                                                                <i class="fa fa-youtube"></i>
                                                            </a>
                                                        </li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                </section>

            </section>
            <aside class="col-md-4">
               <div class="modal-dialog text-center">
            <div class="col-sm-12 main-section">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="col-12 user-img">
                            <img src="img/user.png"/>
                        </div>
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModal3Label">Iniciar sesion</h5>
                        </div>
                        <form action="loginController" method="POST">
                            <div class="modal-body">

                                <div class="form-group" id="user-group">
                                    <label for="formGroupExampleInput">Usuario</label>
                                    <input name="email" type="text" class="form-control" id="formGroupExampleInput" placeholder="...">
                                </div>
                                <div class="form-group" id="contrasena-group">
                                    <label for="formGroupExampleInput2">Contraseña</label>
                                    <input name="clave" type="password" class="form-control" id="formGroupExampleInput2" placeholder="****">
                                </div>

                            </div>
                            
                            <div class="modal-footer">
                                 <button type="submit" class="btn btn-primary">Iniciar sesion</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal" data-toggle="modal" data-target="#exampleModal4">Registrar tienda</button>
                               
                            </div>
                        </form>
                    </div>
                </div></div>
        </div>
        <div class="modal fade" id="exampleModal4" tabindex="-1" role="dialog" aria-labelledby="exampleModal4Label"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModal4Label">Registro de Tienda</h5>

                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="registrarController" method="POST">
                        <div class="modal-body">

                            <div class="form-group">
                                <label for="formGroupExampleInput">Nombre</label>
                                <input name="nom" type="text" class="form-control" id="formGroupExampleInput" placeholder="...">
                            </div>
                            <div class="form-group">
                                <label for="formGroupExampleInput">Lema</label>
                                <input name="lem" type="text" class="form-control" id="formGroupExampleInput" placeholder="...">
                            </div>
                            <div class="form-group">
                                <label for="formGroupExampleInput">Descripcion</label>
                                <input name="des" type="text" class="form-control" id="formGroupExampleInput" placeholder="...">
                            </div>

                            <div class="form-group">
                                <label for="formGroupExampleInput2">Email</label>
                                <input name="ema" type="email" class="form-control" id="formGroupExampleInput2"
                                       placeholder="ejemplo@ejemplo.com">
                            </div>
                            <div class="form-group">
                                <label for="formGroupExampleInput2">Contraseña</label>
                                <input name="cla" type="password" class="form-control" id="formGroupExampleInput2" placeholder="****">
                            </div>
                            <div class="form-group">
                                <label for="formGroupExampleInput">Propietario</label>
                                <input name="pro" type="text" class="form-control" id="formGroupExampleInput" placeholder="...">
                            </div>
                            <div class="form-group">
                                <label for="formGroupExampleInput">Facebook</label>
                                <input name="fac" type="text" class="form-control" id="formGroupExampleInput" placeholder="...">
                            </div>
                            <div class="form-group">
                                <label for="formGroupExampleInput">Web</label>
                                <input name="web" type="text" class="form-control" id="formGroupExampleInput" placeholder="...">
                            </div>
                            <div class="form-group">
                                <label for="formGroupExampleInput">Imagen</label>
                                <input name="img" type="text" class="form-control" id="formGroupExampleInput" placeholder="...">
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Registrar tienda</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
            </aside>
            <div class="clearfix"></div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"  crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"  crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" crossorigin="anonymous"></script>

    </body>
</html>

