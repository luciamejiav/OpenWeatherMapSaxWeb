<%@page import="util.Util"%>
<%@page import="java.util.ArrayList"%>
<%@page import="manejador.ManejadorWeb"%>
<%@page import= "model.Time" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <title>OpenWeatherMapAzarquiel</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

</head>

<body>
	<%
//añadimos el manejador con la url de la pagina que vamos a parsear
ManejadorWeb manejador = new ManejadorWeb("http://api.openweathermap.org/data/2.5/forecast?q=Toledo,es&mode=xml&APPID=601c9db344b44f9774ef76a4c07979b1&lang=sp"); 
ArrayList<Time> times = manejador.parsear();
%>
    <div class="container shadow">
        <header>
            <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
                <div class="container">
                    <a class="navbar-brand" href="#"><img src="img/logo.png" alt="" width="150"></a>
                    <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
                        data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="collapsibleNavId">
                    </div>
                </div>
            </nav>

        </header>
        <main>
            <div class="row justify-content-center">
            <%
            for (Time time:times){
            %>
                <div class="col-lg-6 mb-3">
                    <div class="card">
                        <div class="row">
                            <div class="col-4"><img class="card-img-top" src="img/icono.png" alt="Title"></div>
                            <div class="col-8">
                                <div class="card-body">
                                    <h6 class="card-title">12/04/2023 12:00:00 - 12/04/2023 18:00:00</h6>
									<h6 class="card-text">Nublado</h6>
                                    <p>Precipitación: 12%</p>
                                    <p>Temperaturas Max:34º Min:12º</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <% 
                }
            %>
            </div>
        </main>
        <footer>
            <h2 class="text-center bg-dark text-white py-3">&copy; Paco Pulido</h2>
        </footer>
    </div>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
        </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
        </script>
</body>

</html>