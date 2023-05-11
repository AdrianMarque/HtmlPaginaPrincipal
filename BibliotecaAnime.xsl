﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:ns1="http://www.example.org">
    <xsl:param name="nombreAnime" />
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="Toggle.css" />
                <style>
                    /* Estilos para la tabla */
                    .tabla-detalle {
                        border-collapse: collapse;
                        margin: 20px 0;
                        width: 100%;
                    }
                    .tabla-detalle th, .tabla-detalle td {
                        border: 1px solid #ddd;
                        padding: 8px;
                        text-align: left;
                    }
                    .tabla-detalle th {
                        background-color: #ddd;
                        font-weight: bold;
                        
                             /*Estilos de el toggle switch*/
        .switch {
            position: relative;
            display: inline-block;
            width: 60px;
            height: 34px;
        }

        .switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            -webkit-transition: .4s;
            transition: .4s;
        }

        .slider:before {
            position: absolute;
            content: "";
            height: 26px;
            width: 26px;
            left: 4px;
            bottom: 4px;
            background-color: white;
            -webkit-transition: .4s;
            transition: .4s;
        }

        input:checked+.slider {
            background-color: #2196F3;
        }

        input:focus+.slider {
            box-shadow: 0 0 1px #2196F3;
        }

        input:checked+.slider:before {
            -webkit-transform: translateX(26px);
            -ms-transform: translateX(26px);
            transform: translateX(26px);
        }

        .slider.round {
            border-radius: 34px;
        }

        .slider.round:before {
            border-radius: 50%;
        }

        /*Estilos de la zona de enlace*/
        /*Generalizados*/
        a {
            color: white;
        }

        body {
            background-image: url('Fondo.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            transition: background-image 0.5s ease-in-out;
        }

        body.dark-background {
            background-image: url('FONDO1.jpg');
        }

        /*Estilos de la zona de navegacion*/
        /*Generalizados*/
        nav {
            background-color: #333;
            overflow: hidden;
        }

        nav.directorio {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav a {
            float: left;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        nav a:hover {
            background-color: blue;
            color: white;
        }

        /*Estilos de la zona de listas*/
        /*Generalizados*/
        .one {
            width: 50%;
        }

        .two {
            width: 30%;
        }

        .three {
            width: 30%;
        }

        .four {
            width: 30%;
        }

        .five {
            width: 30%;
        }

        li {
            list-style: none;
        }

        /*estilos especificos */
        .toggle {
            padding-right: 2%;
        }

        .Logo {
            width: 20%;
            height: 15%;
            padding-left: 20%;
        }

        .menu {
            text-align: center;
            padding-bottom: 1%;
        }

        .opciones-menu {
            display: inline-block;
            padding-top: 1%;
            padding-right: 10%;

        }

        .directorio .opciones-menu form input {
            background-color: black;
            border-radius: 20px;
            border: 0;
            margin-bottom: 0;
            height: 40px;
            display: block;
            padding: 5px 15px;
            color: inherit;
            font: inherit;
            outline: none;
            color: white;
        }

        .directorio .opciones-menu form button {
            background-color: transparent;
            position: relative;
            padding: 0;
            right: 0;
            top: 0;
            margin-bottom: 0;
            border: 0;
            box-shadow: none;
            color: white;
            cursor: pointer;
            display: inline-block;
            border-radius: 4px;
            font-weight: 700;
            outline: none;
        }

        /*Estilos de las conexiones*/
        .conexiones {
            width: 20%;
            height: 20%;
            padding: 3%;
        }

        .animes-destacado h1 {
            text-align: center;
            color: white;
        }

        .conexiones .image {
            width: 80%;
            height: 80%;
        }

        /*Ajustes de los div*/
        .main-destacado {
            width: 25%;
        }

        .principal-cont {
            display: flex;
            width: 100%;
        }

        /*Estilos de la lista de anime*/
        .animes-destacado {
            background-color: rgba(51, 51, 51, 0.5);
        }

        .animes-destacado ul {
            opacity: 1;
            font-size: 24px;
            font-family: Arial, Helvetica, sans-serif;
            padding-top: 3%;
        }

        .animes-destacado li {
            padding-bottom: 5%;
        }

        .animes-destacado a {
            text-decoration: none;
        }

        .animes-destacado a:hover {
            background-color: blue;
            color: white;
        }

        /*Estilos de las imagenes de anime*/
        .foto-anime {
            width: 70%;
        }

        .tabla {
            padding-top: 20%;
            margin-right: 0;
            align-items: right;
            align-content: right;
            align-self: right;
            text-align: right;
            float: right;
            display: table;
            border-collapse: collapse;
            padding-left: 10%;
        }

        .fila {
            display: table-row;
        }

        .columna {
            margin-left: auto;
            margin-right: 0;
            align-items: right;
            align-content: right;
            align-self: right;
            text-align: right;
            float: right;
            display: table-cell;
            padding: 5px;
        }

        .tabla .fila .columna img {
            max-width: 80%;
            max-height: 80%;
        }
                    }
                </style>
            </head>
            <body>
             <header>
        <!-- Cabecero - Menu de navegación-->
        <!-- TODO copiar y pegar en el xsl para la transformación dentro del html del xsl-->
        <nav class="directorio">
            <div class="one">
                <img class="Logo" src="Imagenes/LogoPagina.png" alt="NubeDragon">
            </div>
            <div class="two">
                <a href="">Inicio</a>
            </div>
            <div class="three">
                <a href="">Animes</a>
            </div>
            <div class="four">
                <a href="">Directorio Anime</a>
            </div>
            <div class="opciones-menu">
                <form method="get">
                    <input type="text" name="q" placeholder="Search...">
                </form>
            </div>
            <div class="five">
                <a href="" class="conexiones"><img class="image" src="Imagenes/FacebookLogo.png" alt=""></a>
                <a href="" class="conexiones"><img class="image" src="Imagenes/Instagramfoto.jpg" alt=""></a>
                <a href="" class="conexiones"><img class="image" src="Imagenes/TwitterLogo.png" alt=""></a>
            </div>
            <div class="toggle">
                <label class="switch">
                    <input type="checkbox" id="backgroundSwitch">
                    <span class="slider round"></span>
                </label>
            </div>
        </nav>
    </header>
                <xsl:for-each select="biblioteca/anime">
                    <xsl:if test="Nombre=$nombreAnime">
                        <table class="tabla-detalle">
                            <tr>
                                <th>Nombre</th>
                                <td><xsl:value-of select="Nombre" /></td>
                            </tr>
                            <tr>
                                <th>Director</th>
                                <td><xsl:value-of select="Director" /></td>
                            </tr>
                            <tr>
                                <th>Año</th>
                                <td><xsl:value-of select="Año" /></td>
                            </tr>
                            <tr>
                                <th>Seiyuu</th>
                                <td><xsl:value-of select="Seiyuu" /></td>
                            </tr>
                            <tr>
                                <th>Genero</th>
                                <td><xsl:value-of select="Genero" /></td>
                            </tr>
                            <tr>
                                <th>Sinopsis</th>
                                <td><xsl:value-of select="Sinopsis" /></td>
                            </tr>
                            <tr>
                                <th>Criticas</th>
                                <td><xsl:value-of select="Criticas" /></td>
                            </tr>
                            <tr>
                                <th>Finalizado</th>
                                <td><xsl:value-of select="Finalizado" /></td>
                            </tr>
                            <tr>
                                <th>Trailer</th>
                                <td><xsl:value-of select="Trailer" /></td>
                            </tr>
                        </table>
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>