<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Accueil</title>
   <style>
       body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 60px;
            background: #f5f5f5;
       }
        .container {
            width: 700px;
            margin: auto;
            background: white;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 10px #ccc;
        }
        .btn {
            display: inline-block;
            width: 250px;
            padding: 15px;
            margin: 20px;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 20px;
        }
        .btn-client {
            background-color: #2d89ef;
        }
        .btn-reservation {
            background-color: #5cb85c;
        }
   </style>
</head>
<body>
  <div class="container">
     <h1>Bienvenue dans l'application de gestion</h1>
     <a class="btn btn-client" href="Inscription.jsp">Ajouter un Client</a>
     <br>
     <a class="btn btn-reservation" href="Reservation.jsp">Ajouter une Reservation</a>
  </div>

</body>
</html>