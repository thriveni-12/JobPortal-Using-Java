<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home - Job Portal</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #333;
        }

        .container {
            text-align: center;
            background-color: white;
            padding: 40px 60px;
            border-radius: 20px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1s ease-in-out;
        }

        .container h1 {
            font-size: 28px;
            color: #2c3e50;
        }

        .container p {
            margin: 20px 0;
            font-size: 18px;
        }

        .container a {
            text-decoration: none;
            color: white;
            background-color: #3498db;
            padding: 12px 25px;
            border-radius: 8px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .container a:hover {
            background-color: #2980b9;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.95); }
            to { opacity: 1; transform: scale(1); }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome, Vattikuti Thriveni!</h1>
        <p>You are now logged in to your dashboard.</p>
        <a href="view_jobs.jsp">🔍 View Jobs</a>
    </div>
</body>
</html>
