<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
               <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<!--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">-->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script> 
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js">   
    <!--<script src="https://code.jquery.com/jquery-3.3.1.js"></script>-->
    <!--<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    --><script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <!--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    --><link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">      
        <link rel="stylesheet" href="css/carreraedit.css">
<title>Panel Central</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><img src="https://ww2.ufps.edu.co/public/archivos/elementos_corporativos/logo-horizontal.jpg" width="120px;" height="40px;"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
   
      
      <li class="nav-item">
        <a class="nav-link" href="mensajes.jsp">Ver_Listado</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
     <ul class="navbar-nav mr-auto">
      <a href="index.jsp" class="btn btn-danger"  id="volver">Cerrar Sesión</a>
      
    </ul>
    </form>
  </div>
</nav>
<div class="container">
<div class="row justify-content-center">
<div class="col-md-8">
<c:set var="carrera" scope="request" value="${requestScope.carrera}"/>
<form action="MensajeController" method="post">
<h1>Registro de Mensajes</h1>
 <label for="">Codigo</label>
                          <div class="input-group mb-3">                          
                              <div class="input-group-prepend">
    <span class="fa fa-user input-group-text" id="basic-addon1"></span>
  </div>
                              <input type="text" name="id" value="<c:out value="${carrera.id}"/>"  class="form-control" id="codigo"  placeholder="Ingrese el Código">
                           </div>
                           <label for="">Nombre</label>
                          <div class="input-group mb-3">                          
                              <div class="input-group-prepend">
    <span class="fa fa-user input-group-text" id="basic-addon1"></span>
  </div>
                              <input type="text" name="nombre" value="<c:out value="${carrera.nombre}"/>" class="form-control" id="nombre"  placeholder="Ingrese el Nombre">
                           </div>
                           <label for="">Email</label>
                          <div class="input-group mb-3">                          
                              <div class="input-group-prepend">
    <span class="fa fa-envelope input-group-text" id="basic-addon1"></span>
  </div>
                              <input type="email" name="email" value="<c:out value="${carrera.email}"/>"  class="form-control" id="email"  placeholder="Ingrese su Email">
                           </div>
                           <label for="">Sitio Web</label>
                          <div class="input-group mb-3">                          
                              <div class="input-group-prepend">
    <span class="fa fa-envelope input-group-text" id="basic-addon1"></span>
  </div>
                              <input type="text" name="website" value="<c:out value="${carrera.website}"/>"  class="form-control" id="website"  placeholder="Ingrese el Sitio Web">
                           </div>
                           <label for="">Mensaje</label>
                          <div class="input-group mb-3">                          
                              <div class="input-group-prepend">
    <span class="fa fa-envelope input-group-text" id="basic-addon1"></span>
  </div>
                              <input type="text" name="mensaje" value="<c:out value="${carrera.mensaje}"/>"  class="form-control" id="mensaje"  placeholder="cuerpo del Mensaje">
                           </div>
                        
                  

  <input type="submit" name="accion" value="<c:out value="${carrera != null ? 'Editar':'Registrar'}" />" class="btn btn-success"></input>
<a href="mensajes.jsp" class="btn btn-info">Cancelar</a>
</form>
</div>
</div>
</div>
</body>
</html>