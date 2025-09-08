<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Signup Summary - GirlyMe</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="signup-summary">
<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-header bg-success text-white">
            <h3>Signup Successful!</h3>
        </div>
        <div class="card-body">
            <p class="alert alert-success">Welcome! Your account has been created successfully.</p>
            <table class="table">
                <tr>
                    <td><b>Full Name:</b></td>
                    <td><%= request.getParameter("fullname") %></td>
                </tr>
                <tr>
                    <td><b>Email:</b></td>
                    <td><%= request.getParameter("email") %></td>
                </tr>
                <tr>
                    <td><b>Password:</b></td>
                    <td><%= request.getParameter("password") %></td>
                </tr>
            </table>
            <a href="signup.jsp" class="btn btn-outline-secondary">Register Another Account</a>
            <a href="login.jsp" class="btn btn-primary">Go to Login</a>
        </div>
    </div>
</div>
</body>
</html>
