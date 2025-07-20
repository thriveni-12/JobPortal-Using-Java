<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Job Portal</title>
    <style>
        body {
            background: linear-gradient(to right, #74ebd5, #acb6e5);
            font-family: 'Segoe UI', sans-serif;
            text-align: center;
            padding-top: 100px;
        }
        h1 {
            color: #333;
        }
        .button {
            margin: 20px;
            padding: 15px 30px;
            font-size: 18px;
            color: white;
            background-color: #007BFF;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: 0.3s;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Welcome to the Job Portal</h1>
    <a href="login.jsp"><button class="button">Login</button></a>
    <a href="signup.jsp"><button class="button">Sign Up</button></a>
</body>
</html>
