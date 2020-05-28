<%-- 
    Document   : serviciosTienda
    Created on : 28/05/2020, 08:06:09 AM
    Author     : USUARIO
--%>


<%@page import="Dto.Servicio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page  import="Dto.Tienda" %>
<%@page import="Dao.TiendaJpaController" %>
<%@page import="Negocio.Tiendas" %>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Nuestra tienda virtual</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/card.css">
    </head>
    <body>



        <c:set var = "t"   value = "${null}"/>

        <section id="team" class="pb-5">
            <div class="container">
                <c:forEach var="ti" items="${ListServicio}">
                    <c:if test="${t==null}">   
                        <h5 class="section-title h1">SERVICIOS DE <c:out value="${ti.tienda.getNombre()}"/> </h5>
                        <div class="row">
                            <div class="container ">
                                <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal" data-toggle="modal" data-target="#exampleModal4">Registrar Servicio</button>
                                <a type="button" class="btn btn-secondary" href="cerrarSesion">Cerrar sesion</a>
                                </div>
                                <hr>
                                <br></div>
                            <div class="modal fade" id="exampleModal4" tabindex="-1" role="dialog" aria-labelledby="exampleModal4Label"
                                 aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModal4Label">Registrar nuevo servicio</h5>

                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <form action="registrarServController" method="POST">
                                            <div class="modal-body">

                                                <div class="form-group">
                                                    <label for="formGroupExampleInput">Nombre</label>
                                                    <input name="nom" type="text" class="form-control" id="formGroupExampleInput" placeholder="...">
                                                </div>
                                                <div class="form-group">
                                                    <label for="formGroupExampleInput">Descripcion</label>
                                                    <input name="des" type="text" class="form-control" id="formGroupExampleInput" placeholder="...">
                                                </div>
                                                <div class="form-group">
                                                    <input name="tienda" value="<c:out value="${ti.tienda.getNombre()}"/>" hidden="true">  
                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    <button type="submit" class="btn btn-primary">Registrar servicio</button>
                                                </div>
                                            </div>    
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                        </c:if> 
                        <c:set var="t" value="${ti.tienda.getNombre()}"/>

                        <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top" src="<c:out value="${ti.tienda.getImagen()}"/>" alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <a href="#">Servicio <c:out value="${ti.nombre}"/></a>
                                    </h4>
                                    <p class="card-text"> <c:out value="${ti.descripcion}"/></p>
                                </div>
                            </div>
                        </div>

                    </c:forEach> 
                </div>
                <!-- /.row -->

                <!-- Pagination -->
                <ul class="pagination justify-content-center">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Anterior</span>
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">1</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">2</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">3</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Siguiente</span>
                        </a>
                    </li>
                </ul>

            </div>
        </section>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>