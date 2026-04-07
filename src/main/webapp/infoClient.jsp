<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Client" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Informations client</title>
   <style>
        body {
            font-family: Arial, sans-serif;
            background: #ffffff;
            text-align: center;
            margin-top: 40px;
        }
        table {
            margin: auto;
            border-collapse: collapse;
            width: 70%;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
        }
        th {
            background: #f2f2f2;
        }
        .success {
            color: green;
            font-weight: bold;
        }
        .btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background: #337ab7;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
    </style>
</head>
<body>
<%
    Client client = (Client) request.getAttribute("client");
    String message = (String) request.getAttribute("message");
%>
    <p class="success"><%= message %></p>
    <h2>Affichage des données du client :</h2>

    <table>
        <tr>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Téléphone</th>
            <th>E-mail</th>
        </tr>
        <tr>
            <td><%= client.getNom() %></td>
            <td><%= client.getPrenom() %></td>
            <td><%= client.getTelephone() %></td>
            <td><%= client.getEmail() %></td>
        </tr>
    </table>

    <a class="btn" href="Inscription.jsp">Retourne au formulaire d'ajout</a>
</body>
</html>