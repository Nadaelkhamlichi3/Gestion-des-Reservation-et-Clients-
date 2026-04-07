<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Ajouter un Client</title>
   <style>
       body {
            font-family: Arial, sans-serif;
            background: #f7f7f7;
        }
        .form-container {
            width: 500px;
            margin: 50px auto;
            background: white;
            padding: 25px;
            border-radius: 6px;
            box-shadow: 0 0 10px #ccc;
        }
        h2 {
            text-align: center;
            color: #337ab7;
        }
        table {
            width: 100%;
        }
        td {
            padding: 8px;
        }
        input[type=text], input[type=email] {
            width: 100%;
            padding: 8px;
        }
        .btn {
            width: 100%;
            padding: 15px;
            background-color: #5cb85c;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s;
        }

.btn:hover {
    background-color: #4cae4c;
}
        .error {
            text-align: center;
            color: red;
            font-weight: bold;
        }
        .footer {
            text-align: center;
            margin-top: 15px;
            color: gray;
        }
   </style>
</head>
<body>
   <div class="form-container">
      <h2>Ajouter un client :</h2>
      <% String erreur = (String) request.getAttribute("erreur"); %>
      <% if (erreur != null) { %>
          <p class="error"><%= erreur %></p>
      <% } %>
      <form action="<%= request.getContextPath() %>/creerClient" method="post">

        <label>Nom</label>
        <input type="text" name="nom"><br><br>

        <label>Prénom</label>
        <input type="text" name="prenom"><br><br>

        <label>Téléphone</label>
        <input type="text" name="telephone"><br><br>

        <label>E-mail</label>
        <input type="email" name="email"><br><br>

        <button type="submit" class="btn">Ajouter Client</button>

    </form>
       <div  class="footer">Application de gestion des réservations © 2026</div>
      
   </div>
</body>
</html>