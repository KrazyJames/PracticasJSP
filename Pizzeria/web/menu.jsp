<%-- 
    Document   : menu
    Created on : 12/03/2019, 08:15:25 PM
    Author     : jimmy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(Boolean.valueOf(request.getParameter("logout"))){
        session.setAttribute("id",null);
        session.setAttribute("nombre",null);
        session.setAttribute("correo",null);
        session.setAttribute("direccion",null);
        session.setAttribute("perfil",null);
        session=null;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap/bootstrap-4.3.1-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/pizza.css">
        <script src="bootstrap/bootstrap-4.3.1-dist/js/jQuery-v3.1.1.min.js"></script>
    </head>
    <body>
        <div class="container-fluid sinBorde">
            
            <nav id="menuNav" class="navbar fixed-top navbar-expand-lg navbar-dark">
                <div class="container">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="">
                            <img src="img/logo2.png" width="40" height="40" class="d-inline-block align-top" alt="">
                            Tony's Pizza
                          </a>
                        <button class="navbar-toggler float-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                    </div>
                    
                    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Menu</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Contacto</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="carro.html"><i class="fas fa-shopping-cart"></i></a>
                            </li>
                            <li class="nav-item">
                                <%
                                    if(session!=null && session.getAttribute("nombre")!=null){
                                %>
                                <a class="nav-link" href="profile.jsp"><%=session.getAttribute("nombre")%><span class="badge"><i class="fas fa-user"></i></span></a>
                                <%
                                    }else{ %>
                                      <a class="nav-link" href="login.jsp">Login<span class="badge"><i class="fas fa-user"></i></span></a>
                                <%
                                    
                                    }
                                %>
                                            
                            </li>
                            <li class="nav-item">
                                <%
                                    if(session!=null && session.getAttribute("nombre")!=null){
                                %>
                                <a class="nav-link" href="menu.jsp?logout=true">Salir</a>
                                <%
                                    }
                                    %>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <!-- Slide -->
            <div id="carouselExampleIndicators" class="carousel slide h-100 w-100" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner h-100">
                  <div class="carousel-item active">
                    <img src="img/Pizza.jpg" class="d-block w-100 h-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="img/Pizza.jpg" class="d-block w-100 h-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="img/Pizza.jpg" class="d-block w-100 h-100" alt="...">
                  </div>
                </div>
              </div>
              
            <!-- contenedor del contenido -->
            <div class="container">

                <div class="menu">
                    <h2 class="subtitulo">Menu</h2>
                </div>

                <div class="contenido">

                    <div class="row">
                        <div class="col-md">
                            <div class="position-relative">
                                <img src="img/hawaiana.jpg" class="img-fluid" alt="Responsive image">
                                <div class="hoverable position-absolute w-100 text-center align-items-center d-flex flex-column overflow-hidden">
                                    <div class="tipoPizza">
                                        <h3>
                                            Pizza hawaiana
                                        </h3>
                                    </div>
                                    <div class="info">
                                        <p>
                                            Pizza hecha con los mejores ingredientes.
                                        </p>
                                        <p>
                                            <b>Contiene</b> Piña y jamón.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md">
                            <div class="position-relative">
                                <img src="img/hawaiana.jpg" class="img-fluid" alt="Responsive image">
                                <div class="hoverable position-absolute w-100 text-center align-items-center d-flex flex-column overflow-hidden">
                                    <div class="tipoPizza">
                                        <h3>
                                            Pizza hawaiana
                                        </h3>
                                    </div>
                                    <div class="info">
                                        <p>
                                            Pizza hecha con los mejores ingredientes.
                                        </p>
                                        <p>
                                            <b>Contiene</b> Piña y jamón.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md">
                            <div class="position-relative">
                                <img src="img/hawaiana.jpg" class="img-fluid" alt="Responsive image">
                                <div class="hoverable position-absolute w-100 text-center align-items-center d-flex flex-column overflow-hidden">
                                    <div class="tipoPizza">
                                        <h3>
                                            Pizza hawaiana
                                        </h3>
                                    </div>
                                    <div class="info">
                                        <p>
                                            Pizza hecha con los mejores ingredientes.
                                        </p>
                                        <p>
                                            <b>Contiene</b> Piña y jamón.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md">
                            <div class="position-relative">
                                <img src="img/hawaiana.jpg" class="img-fluid" alt="Responsive image">
                                <div class="hoverable position-absolute w-100 text-center align-items-center d-flex flex-column overflow-hidden">
                                    <div class="tipoPizza">
                                        <h3>
                                            Pizza hawaiana
                                        </h3>
                                    </div>
                                    <div class="info">
                                        <p>
                                            Pizza hecha con los mejores ingredientes.
                                        </p>
                                        <p>
                                            <b>Contiene</b> Piña y jamón.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md">
                            <div class="position-relative">
                                <img src="img/hawaiana.jpg" class="img-fluid" alt="Responsive image">
                                <div class="hoverable position-absolute w-100 text-center align-items-center d-flex flex-column overflow-hidden">
                                    <div class="tipoPizza">
                                        <h3>
                                            Pizza hawaiana
                                        </h3>
                                    </div>
                                    <div class="info">
                                        <p>
                                            Pizza hecha con los mejores ingredientes.
                                        </p>
                                        <p>
                                            <b>Contiene</b> Piña y jamón.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md">
                            <div class="position-relative">
                                <img src="img/hawaiana.jpg" class="img-fluid" alt="Responsive image">
                                <div class="hoverable position-absolute w-100 text-center align-items-center d-flex flex-column overflow-hidden">
                                    <div class="tipoPizza">
                                        <h3>
                                            Pizza hawaiana
                                        </h3>
                                    </div>
                                    <div class="info">
                                        <p>
                                            Pizza hecha con los mejores ingredientes.
                                        </p>
                                        <p>
                                            <b>Contiene</b> Piña y jamón.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md">
                            <div class="position-relative">
                                <img src="img/hawaiana.jpg" class="img-fluid" alt="Responsive image">
                                <div class="hoverable position-absolute w-100 text-center align-items-center d-flex flex-column overflow-hidden">
                                    <div class="tipoPizza">
                                        <h3>
                                            Pizza hawaiana
                                        </h3>
                                    </div>
                                    <div class="info">
                                        <p>
                                            Pizza hecha con los mejores ingredientes.
                                        </p>
                                        <p>
                                            <b>Contiene</b> Piña y jamón.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md">
                            <div class="position-relative">
                                <img src="img/hawaiana.jpg" class="img-fluid" alt="Responsive image">
                                <div class="hoverable position-absolute w-100 text-center align-items-center d-flex flex-column overflow-hidden">
                                    <div class="tipoPizza">
                                        <h3>
                                            Pizza hawaiana
                                        </h3>
                                    </div>
                                    <div class="info">
                                        <p>
                                            Pizza hecha con los mejores ingredientes.
                                        </p>
                                        <p>
                                            <b>Contiene</b> Piña y jamón.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md">
                            <div class="position-relative">
                                <img src="img/hawaiana.jpg" class="img-fluid" alt="Responsive image">
                                <div class="hoverable position-absolute w-100 text-center align-items-center d-flex flex-column overflow-hidden">
                                    <div class="tipoPizza">
                                        <h3>
                                            Pizza hawaiana
                                        </h3>
                                    </div>
                                    <div class="info">
                                        <p>
                                            Pizza hecha con los mejores ingredientes.
                                        </p>
                                        <p>
                                            <b>Contiene</b> Piña y jamón.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid">
                        <nav aria-label="Navigation">
                            <ul class="pagination justify-content-center">
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <!--./el menu-->

                <!-- Contacto -->
                <div class="container-fluid">
                    <div class="menu">
                        <h2 class="subtitulo">Contacto</h2>
                    </div>
                    <div class="info">
                        <p class="contacto">
                            En pizzerías Tony estamos para ofrecerle la mejor pizza al mejor precio. Para ello aceptamos y agradecemos su valiosa opinión y/o sugerencias.
                        </p>
                        <p class="contacto">
                            Siguenos en nuestras redes sociales para enterarte de todas nuestras promociones.
                        </p>
                    </div>
                    <div class="row">
                        <div class="col-md formulario">
                            <form action="#">
                                <div class="form-group iconIn">
                                    <input type="text" class="form-control" name="nombreCompleto" placeholder="Nombre Completo">
                                    <i class="fas fa-user"></i>
                                </div>
                                <div class="form-group iconIn">
                                    <input type="text" class="form-control" name="direccion" placeholder="Dirección">
                                    <i class="fas fa-map-marked-alt"></i>
                                </div>
                                <div class="form-group iconIn">
                                    <input type="email" class="form-control" name="correo" placeholder="Correo Electrónico">
                                    <i class="fas fa-envelope"></i>
                                </div>
                                <div class="form-group iconIn">
                                    <input type="text" class="form-control" name="telefono" placeholder="Teléfono">
                                    <i class="fas fa-phone"></i>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" name="comentario" rows="3" placeholder="Comentario"></textarea>
                                </div>
                                <div>
                                    <button type="submit" class="btn btn-primary float-right">Enviar</button>
                                </div>
                            </form>
                        </div>
                        <div class="col-md mapa">
                            <div id="map"></div>
                        </div>
                    </div>
                </div>
                <!-- ./Contacto -->
                
            </div>
            

        </div>
            <footer>
                <div class="container">
                    <ul class="list-group list-group-horizontal float-right">
                        <li class="list-group-item"><a href="fb.com"><i class="fab fa-instagram fa-2x socialLink"></i></a></li>
                        <li class="list-group-item"><a href="fb.com"><i class="fab fa-facebook-square fa-2x socialLink"></i></a></li>
                        <li class="list-group-item"><a href="fb.com"><i class="fab fa-twitter-square fa-2x socialLink"></i></a></li>
                    </ul>
                </div>
            </footer>

        <script src="bootstrap/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script>
            // Initialize and add the map
            function initMap() {
            // The location of Uluru
            var guaymas = {lat: 27.9185, lng: -110.907};
            // The map, centered at Uluru
            var map = new google.maps.Map(
                document.getElementById('map'), {zoom: 12, center: guaymas});
            // The marker, positioned at Uluru
            var marker = new google.maps.Marker({position: guaymas, map: map});
            }
        </script>
        <!--Load the API from the specified URL
        * The async attribute allows the browser to render the page while the API loads
        * The key parameter will contain your own API key (which is not needed for this tutorial)
        * The callback parameter executes the initMap() function
        -->
        <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBNl7_JpXxRrSMtSoliTQJLMBlTJ9lgeHw&callback=initMap">
        </script>
        <script>
            $(window).scroll(function() {
                if ($("#menuNav").offset().top > 56) {
                    $("#menuNav").addClass("bg-verde");
                } else {
                    $("#menuNav").removeClass("bg-verde");
                }
            });
        </script>
    </body>
</html>
