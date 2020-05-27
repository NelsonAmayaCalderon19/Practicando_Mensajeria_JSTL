<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/index.js" type="text/javascript"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="css/style.css">

    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
      <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

<title>Login</title>
 <link rel="stylesheet" href="css/index.css">
 <script src="js/index.js" type="text/javascript"></script>
</head>
<body>
      <main class="login-form">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                    <h1 class="text-center">Login</h1>						 
                   <form action="UsuarioController" method="post" name="login">
                   <!--<label for="exampleInputEmail1">Email </label>
                          <div class="input-group mb-3">                          
                              <div class="input-group-prepend">
    <span class="fa fa-envelope input-group-text" id="basic-addon1"></span>
  </div>
                              <input type="email" name="email"  class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                           </div>-->
                           <label for="exampleInputEmail1">Usuario</label>
                           <div class="input-group mb-3">                             
                              <div class="input-group-prepend">
    <span class="fa fa-user input-group-text" id="basic-addon1"></span>
  </div>                            
                              <input type="text" name="usuario"  class="form-control" id="usuario"  placeholder="Enter Usuario" autofocus="">
                           </div>
                           <label for="exampleInputEmail1">Password</label>
                            <div class="input-group mb-3">                             
                              <div class="input-group-prepend">
    <span class="fa fa-lock input-group-text" id="basic-addon1"></span>
  </div>                                 
                              <input type="password" name="password" id="password"  class="form-control"  placeholder="Enter Password">
                           </div>
                           <div id="register-link" class="text-right">
                                <a href="registro.jsp" class="text-info"><strong>Registrate Aquí</strong></a>
                            </div>
                           <br>
                           <div class="col-md-12 text-center ">
                              <input type="submit" name="accion" value="LOGIN" class=" btn btn-block mybtn btn-primary tx-tfm">
                           </div>
                           
                        </form>
                </div>
            </div>
        </div>
    </div>
    </div>

</main>
</body>
</html>