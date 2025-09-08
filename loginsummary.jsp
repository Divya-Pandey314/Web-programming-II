<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Summary - GirlyMe</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="login-summary">
<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-header bg-primary text-white">
            <h3>Login Summary</h3>
        </div>
        <div class="card-body">
            <p class="alert alert-info">You have logged in successfully!</p>
            <table class="table">
                <tr>
                    <td><b>Email:</b></td>
                    <td><%= request.getParameter("email") %></td>
                </tr>
                <tr>
                    <td><b>Password:</b></td>
                    <td><%= request.getParameter("password") %></td>
                </tr>
            </table>
            <a href="login.jsp" class="btn btn-outline-secondary">Back to Login</a>
        </div>
    </div>
</div>
</body>
</html>
