<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page session="true" %>
<%@ page import="com.jobportal.model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Job</title>
</head>
<body>
<h2>Add New Job</h2>
<form action="addJob" method="post">
    Title: <input type="text" name="title" required><br>
    Description: <textarea name="description" required></textarea><br>
    Company: <input type="text" name="company" required><br>
    <input type="submit" value="Add Job">
</form>
<a href="home.jsp">Back to Home</a>
</body>
</html>