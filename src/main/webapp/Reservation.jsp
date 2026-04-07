<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter une réservation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f7f7f7;
        }
        .form-container {
            width: 550px;
            margin: 40px auto;
            background: white;
            padding: 25px;
            border-radius: 6px;
            box-shadow: 0 0 10px #ccc;
        }
        h2 {
            text-align: center;
        }
        table {
            width: 100%;
        }
        td {
            padding: 8px;
        }
        input[type=text], input[type=email], input[type=number], select {
            width: 100%;
            padding: 8px;
        }
        .btn {
            width: 100%;
            padding: 10px;
            background: #5cb85c;
            color: white;
            border: none;
            border-radius: 4px;
        }
        .error {
            text-align: center;
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Ajouter une réservation :</h2>

        <% String erreur = (String) request.getAttribute("erreur"); %>
        <% if (erreur != null) { %>
            <p class="error"><%= erreur %></p>
        <% } %>

        <form action="creerReservation" method="post">
            <table>
                <tr>
                    <td>Nom</td>
                    <td><input type="text" name="nom"></td>
                </tr>
                <tr>
                    <td>Prénom</td>
                    <td><input type="text" name="prenom"></td>
                </tr>
                <tr>
                    <td>Téléphone</td>
                    <td><input type="text" name="telephone"></td>
                </tr>
                <tr>
                    <td>E-mail</td>
                    <td><input type="email" name="email"></td>
                </tr>
                <tr>
                    <td>Type</td>
                    <td>
                        <select name="type">
                            <option value="single">chambre single</option>
                            <option value="double">chambre double</option>
                            <option value="suite">suite</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Prix</td>
                    <td><input type="number" step="0.01" name="prix"></td>
                </tr>
                <tr>
                    <td>Vue</td>
                    <td>
                        <select name="vue">
                            <option value="piscine">piscine</option>
                            <option value="mer">mer</option>
                            <option value="jardin">jardin</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input class="btn" type="submit" value="Ajouter Réservation">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>