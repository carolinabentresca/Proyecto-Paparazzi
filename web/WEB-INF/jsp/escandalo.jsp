<%-- 
    Document   : escandalo
    Created on : 23/10/2021, 19:43:36
    Author     : EXO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>#WandaGate</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </head>

    <body>
        <div class="card-header bg-dark text-white">
            <h1 style="font-family: cursive">Paparazzi </h1>
        </div>
        <br/>
        <br/>
        <div class="container mt-4">
            <div class="card border-dark"> 
                <div class="card-body bg-dark text-white">
                    <table class="table table-hover">
                        <div class="container">
                            <a href="wandaGate.htm"  style="font-family: cursive" class="btn btn-success">VOLVER AL MENÚ</a>    
                        </div>
                        <br/>
                        <br/>
                        <div class="container">
                            <h6 style="font-family: cursive">" Chats entre Icardi y la China Suarez - Wanda Nara y la China - Vicuña y Wanda... "</h6>
                        </div>
                        <thead>
                            <tr>
                                <th style="font-family: cursive" class="text-white">NOMBRE</th>
                                <th style="font-family: cursive" class="text-white">APELLIDO</th>
                                <th style="font-family: cursive" class="text-white">PROFESIÓN</th>
                                <th style="font-family: cursive" class="text-white">ESCÁNDALO CONFIRMADO</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td style="font-family: cursive" class="text-white">${dato.nombre}</td>
                                    <td style="font-family: cursive" class="text-white">${dato.apellido}</td>
                                    <td style="font-family: cursive" class="text-white">${dato.profesión}</td>
                                    <td style="font-family: cursive" class="text-white">${dato.estado}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <br/> 
                    <hr class="card border-white"/> 
                    <br/> 
                    <div class="container text-white">
                        <h5 style="text-align: center;font-family: cursive">Paparazzi</h5>
                    </div>
                </div>
            </div>  
        </div>     
        <script> alert("¡¡¡PELIGRO, LA CHINA ESTÁ SOLTERA!!!");</script>              
    </body>
</html>
