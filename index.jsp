<!DOCTYPE html>
<html>
    <head>
        <title>Pagina 1 Antonio Aplicacion WEB </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-----------------------------BOOTSTRAP----------------------------->
                <!--Icono-->
                <link rel="Icon" type="img/png" href="img/logoicono.png">
                <!-- Google font -->
                <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
                <!-- Bootstrap -->
                <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
                <!-- Slick -->
                <link type="text/css" rel="stylesheet" href="css/slick.css"/>
                <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
                <!-- nouislider -->
                <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
                <!-- Font Awesome Icon -->
                <link rel="stylesheet" href="css/font-awesome.min.css">
                <!-- Custom stlylesheet -->
                <link type="text/css" rel="stylesheet" href="css/style.css"/>
                <!--Ventanas emergentes-->
                <link rel="stylesheet" type="text/css" href="css/ventanas.css">
<!-----------------------------/BOOTSTRAP----------------------------->
    </head>
    <body>
<!-- NAVIGATION ---------------------------------------------------------------->
                <nav id="navigation">
                        <!-- container -->
                        <div class="container">
                                <!-- responsive-nav -->
                                <div id="responsive-nav">
                                        <!-- NAV -->
                                        <ul class="main-nav nav navbar-nav">
                                                <li><a href="index.jsp">Inicio</a></li>
                                                <li><a href="#ventajas">Ventajas</a>
                                                <li><a href="desventajas.jsp">Desventajas</a></li>
                                                <li><a href="#videos">Videos</a></li>
                                        </ul>
                                        <!-- /NAV -->
                                </div>
                                <!-- /responsive-nav -->
                        </div>
                        <!-- /container -->
                </nav>
<!-- /NAVIGATION --------------------------------------------------------------->

<br>
        <div class="container" id="ventajas">
            <center>
             
                <div class="thumbnail">
                   
                </div>
                <h4>Lista de ventajas sobre la IA</h4>
                <br>
            </center>  
                <%@include file="conexion.jsp"%>
               
                <div class="row col-md-12" >
                <table class="table table-striped table-bordered table-hover" style="text-align: center">
                    <thead>
                        <tr>
                            <th style="text-align: center">ID</th>
                            <th style="text-align: center">Titulo</th>
                            <th style="text-align: center">Ventaja</th>
                            <th style="text-align: center">Categoria</th>
                        </tr>
                    </thead>
                    <tbody>
                       
                        <%
                          st=conexion.prepareStatement("select * from consejos_ia");
                          rs=st.executeQuery();
                          while(rs.next()){//inicia while
                        %> 
                        <tr>
                            <td><%= rs.getInt("id-consejo") %></td>
                            <td><%= rs.getString("titulo") %></td>
                            <td><%= rs.getString("consejo") %></td>
                            <td><%= rs.getString("categoria") %></td>
                        </tr>
                        <%
                          }//termina while  
                        %>
                    </tbody>
                </table>
            </div>
        </div>      
        
<!-- Video section -------------------------------------------------------------------->
<section id="videos">
        <div class="container">
                <div class="row">
                        <div class="col-md-6 text-center">
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/cmep2mdip3k?si=GUKw4Jyj29lSUjjD" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                        </div>
                        <div class="col-md-6 text-center">
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/XuWMWPwdlik?si=BhCu2bUo7Doyd7ZI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                        </div>
                </div>
                <div class="row">
                        <div class="col-md-12 text-center">
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/_tA5cinv0U8?si=zLM8uobbY5UDV-O5" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>  
                        </div>
                </div>
        </div>
</section>

<!-- /Video section -------------------------------------------------------------------->
<!-- FOOTER -------------------------------------------------------------------->
                <footer id="footer">
                         <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        
                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Contáctanos</h3>
                                <p>Tecnológico Universitario del Valle de Chalco</p>

                                <ul class="footer-links">
                                        <li><i class="fa fa-map-marker"></i>Av. Tezozómoc s/n, Colonia Alfredo Baranda, Valle de Chalco, Edo. de Méx. </li>
                                        <li><i class="fa fa-phone"></i>1708 5959</li>
                                        <li><i class="fa fa-envelope-o"></i>kenia.ayala@tuvch.ibero.mx</li>
                                </ul>
                            </div>

                        </div>

                        
                        <div class="clearfix visible-xs"></div>
                        
                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Acerca de</h3>
                                <ul class="footer-links">
                                    <li><a href="#openModal">Nosotros</a>
                                            <div id="openModal" class="modalDialog">
                                                                                                <div id="contenidomod">
                                                                                                        <a href="#close" title="Close" class="close">X</a>
                                                                                                        <br><h1>Biblioteca Banorte</h1>
                                                                                                        <p>Somos una unidad ubicada dentro del Tecnológico Universitario del Valle de Chalco, con el único propósito de brindar a la comunidad estudiantil las herramientas necesarias para su desarrollo profesional.</p>
                                                                                                        <p>Para más información llámanos a los telefonos:<br>
                                                                                                        ? 55-555-5555-5<br>
                                                                                                        ? 555-555-555-4</p>
                                                                                                </div>
                                                                                        </div></li>
                                    <li><a href="#openModa2">Horarios</a>
                                            <div id="openModa2" class="modalDialog">
                                                                                                <div id="contenidomod">
                                                                                                        <a href="#close" title="Close" class="close">X</a>
                                                                                                        <br><h1>Horarios de atención</h1>
                                                                                                        <p>La Biblioteca Banorte cuenta con los 
                                                                                                        siguientes horarios:</p>
                                                                                                        <p>De lunes a viernes de 7:00 hrs a 18:00 hrs</p>
                                                                                                </div>
                                                                                        </div></li>
                                    <li><a href="http://www.tecvalledechalco.edu.mx/Documentos/Legales/Aviso-de-Privacidad-Integral-Version-Final.pdf" target="back">Avisos de privacidad</a></li>
                                                </ul>
                                         </div>
                                     </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /top footer -->

                        <!-- bottom footer -->
                        <div id="bottom-footer" class="section">
                                <div class="container">
                                        <!-- row -->
                                        <div class="row">
                                                <div class="col-md-12 text-center">
                                                        <span class="copyright">
                                                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                                        </span>
                                                </div>
                                        </div>
                                                <!-- /row -->
                                </div>
                                <!-- /container -->
                        </div>
                        <!-- /bottom footer -->
                </footer>
<!-- /FOOTER ------------------------------------------------------------------->  
    
     <!-- jQuery Plugins -->
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
                <script src="js/slick.min.js"></script>
                <script src="js/nouislider.min.js"></script>
                <script src="js/jquery.zoom.min.js"></script>
                <script src="js/main.js"></script>
              
                <script type="text/javascript" src="js/municipios.js"></script>
                    <script type="text/javascript" src="js/select_estados.js"></script>
               
    </body>
</html>
