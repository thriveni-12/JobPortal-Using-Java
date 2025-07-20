<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.jobportal.model.Job" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="job" class="com.jobportal.model.Job" scope="request" />

<html>
<head>
    <title>Edit Job</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #c6ffdd, #fbd786, #f7797d);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: #ffffff;
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.25);
            width: 500px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin: 15px 0 5px;
            font-weight: 600;
        }

        input[type="text"],
        input[type="number"],
        textarea {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            font-size: 14px;
        }

        textarea {
            resize: vertical;
            height: 100px;
        }

        input[type="submit"] {
            background: #007bff;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            font-size: 16px;
            border-radius: 8px;
            margin-top: 20px;
            cursor: pointer;
            transition: background 0.3s;
        }

        input[type="submit"]:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Edit Job</h2>
    <form action="EditJobServlet" method="post">
        <input type="hidden" name="id" value="${job.id}" />

        <label for="title">Title</label>
        <input type="text" name="title" value="${job.title}" required />

        <label for="company">Company</label>
        <input type="text" name="company" value="${job.company}" required />

        <label for="qualifications">Qualifications</label>
        <input type="text" name="qualifications" value="${job.qualifications}" required />

        <label for="description">Description</label>
        <textarea name="description" required>${job.description}</textarea>

        <label for="location">Location</label>
        <input type="text" name="location" value="${job.location}" required />

        <label for="postedBy">Posted By (User ID)</label>
        <input type="number" name="postedBy" value="${job.postedBy}" required />

        <input type="submit" value="Update Job" />
    </form>
</div>
</body>
</html>
