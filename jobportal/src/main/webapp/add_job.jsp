<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Job</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #36d1dc, #5b86e5);
            padding: 50px;
        }
        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 15px;
            max-width: 600px;
            margin: auto;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 15px;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        button {
            background-color: #5b86e5;
            color: white;
            padding: 10px 20px;
            border: none;
            margin-top: 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #36d1dc;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Add New Job</h2>
    <form action="AddJobServlet" method="post">
        <label>Title:</label>
        <input type="text" name="title" required>

        <label>Company:</label>
        <input type="text" name="company" required>

        <label>Qualifications:</label>
        <input type="text" name="qualifications" required>

        <label>Description:</label>
        <textarea name="description" rows="5" required></textarea>

        <label>Posted By (User ID):</label>
        <input type="number" name="posted_by" required>

        <label>Location:</label>
        <input type="text" name="location" required>

        <button type="submit">Add Job</button>
    </form>
</div>
</body>
</html>
