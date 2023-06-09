<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/estilo1.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Bio�tica</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
    <!--Barra de navegacion 1-->
    <div class="contenedor1">
        <div class="navbar1">
            <h5>Telf: 0980485032</h5>
            <div>
                <a href="login.jsp"><img src="imagenes/acceso.png" class="iconos" alt="Mi cuenta"></a>
                <a href="registro.jsp"><img src="imagenes/verificar.png" class="iconos" alt="Registrate"></a>
            </div>
        </div>
    </div>

    <!--Barra de navegacion 2-->
    <div class="contenedor2">
        <div class="navbar2">
            <div class="logotipo">
                <img src="imagenes/bioetica.png" class="logo" alt="Main logo">
                <h1>Bio�tica</h1>
            </div>
            <ul>
                <li><a href="index.jsp">Inicio</a></li>
                <li><a href="info.jsp">Grupo</a></li>
                <li><a href="noticias.jsp">Noticias</a></li>
                <li><a href="galeria.jsp">Eventos y galer�a</a></li>
            </ul>
        </div>
    </div>
    <div id="carouselExampleIndicators" class="carousel slide">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="imagenes/Bioetica4.jpg" class="d-block w-100" alt="..." width="150px" height="450px">
            </div>
            <div class="carousel-item">
                <img src="imagenes/Bioetica2.jpg" class="d-block w-100" alt="..." width="150px" height="450px">
            </div>
            <div class="carousel-item">
                <img src="imagenes/Bioetica1.png" class="d-block w-100" alt="..." width="150px" height="450px">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <div class="container separar">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="row">
                    <div class="col-lg-4 col-md-12 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Descripci�n</h5>
                                <p class="card-text">El Grupo Acad�mico de Bio�tica es un grupo ASU multidisciplinar,
                                    que analiza sobre los problemas personales, sociales y ecol�gicos en relaci�n al
                                    impacto de la ciencia y tecnolog�a, fomentando una actitud �tica que implique un
                                    compromiso profesional como estudiante salesiano universitario.</p>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-4 col-md-12 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Misi�n</h5>
                                <p class="card-text">El Grupo Acad�mico de Bio�tica es un grupo ASU de educaci�n
                                    human�stica y multidisciplinaria, que reflexiona sobre la aplicaci�n e impacto de la
                                    Tecnociencia en el ser humano a nivel ambiental, socio-pol�tico y econ�mico,
                                    fomentando una actitud �tica, deontol�gica e investigativa en el compromiso
                                    profesional a partir de la Identidad Salesiana.</p>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-4 col-md-12 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Visi�n</h5>
                                <p class="card-text">Ser un grupo acad�mico reconocido que brinde apoyo en la formaci�n
                                    de la persona, educarla e instruirla, con el prop�sito de que aprenda a ser el
                                    promotor de su VIDA y constructor de su proyecto de vida, respetando el entorno que
                                    lo rodea, buscando el balance entre la sabidur�a y el conocimiento en la formaci�n
                                    de la persona.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="anexos">
            <div>
                <img src="imagenes/bioetica.png" class="logo">
                <p>Grupo acad�mico multidisciplinario de la Universidad<br>
                Polit�cnica Salesiana, Sede Quito 2023</p>
                <a href="https://www.ups.edu.ec/">M�s informaci�n aqu�</a>
            </div>
            <div>
                <h2>S�guenos</h2>
                <a href="#">Facebook</a>
                <a href="#">Instagram</a>
                <a href="#">Twitter</a>
            </div>
            <div>
                <h2>Desarrolladores</h2>
                <a href="https://github.com/zelejimenez26">M�s informaci�n aqu�</a>
            </div>
        </div>
    </footer>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
</body>
</html>