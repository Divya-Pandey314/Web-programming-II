<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignUp to GirlyMe</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body class="signup-page">
<div class="container d-flex align-items-center justify-content-center vh-100">
    <div class="card shadow-lg p-4" style="max-width: 450px; width: 100%;">
        <h3 class="text-center mb-4 text-success">Sign Up to GirlyMe</h3>
        <form action="summary.jsp" method="POST">
            <div class="mb-3">
                <label for="name" class="form-label fw-bold">Full Name</label>
                <input type="text" id="name" name="name" class="form-control" placeholder="Enter your full name" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label fw-bold">Email</label>
                <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label fw-bold">Password</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Create a password" required>
            </div>
            <div class="mb-3">
                <label for="confirmPassword" class="form-label fw-bold">Confirm Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="Confirm password" required>
            </div>
            <button type="submit" class="btn btn-success w-100">Sign Up</button>
        </form>

        <!-- Link to Login -->
        <div class="text-center mt-3">
            <p class="mb-1">Already have an account?</p>
            <a href="${pageContext.request.contextPath}/user/login" class="btn btn-outline-primary w-100">Login</a>

        </div>
    </div>
</div>
</body>
</html>
