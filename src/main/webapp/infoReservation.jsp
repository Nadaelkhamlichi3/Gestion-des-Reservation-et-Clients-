<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.Reservation" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Info Réservation</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f2f2f2;
    }

    .container {
        width: 85%;
        margin: 40px auto;
    }

    .success {
        text-align: center;
        color: green;
        font-weight: bold;
        margin-bottom: 20px;
    }

    h2 {
        color: #9c7a3c;
        font-weight: normal;
        margin-bottom: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        background: #f7f7f7;
    }

    th {
        text-align: left;
        padding: 10px;
        border-bottom: 2px solid #ddd;
    }

    td {
        padding: 12px;
        border-top: 1px solid #ddd;
    }

    .btn {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 15px;
        background: #428bca;
        color: white;
        text-decoration: none;
        border-radius: 4px;
    }

    .btn:hover {
        background: #3071a9;
    }
</style>

</head>
<body>

<%
    Reservation reservation = (Reservation) request.getAttribute("reservation");
    String message = (String) request.getAttribute("message");
%>

<div class="container">
    <p class="success"><%= message %></p>
    
    <h2>Affichage des données de la réservation :</h2>
    <table>
        <tr>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Téléphone</th>
            <th>E-mail</th>
            <th>Type</th>
            <th>Prix</th>
            <th>Vue</th>
        </tr>
        <tr>
            <td><%= reservation.getClient().getNom() %></td>
            <td><%= reservation.getClient().getPrenom() %></td>
            <td><%= reservation.getClient().getTelephone() %></td>
            <td><%= reservation.getClient().getEmail() %></td>
            <td><%= reservation.getType() %></td>
            <td><%= reservation.getPrix() %></td>
            <td><%= reservation.getVue() %></td>
        </tr>
    </table>

    <a href="Reservation.jsp" class="btn">Retourne au formulaire d'ajout</a>

</div>

</body>
</html>