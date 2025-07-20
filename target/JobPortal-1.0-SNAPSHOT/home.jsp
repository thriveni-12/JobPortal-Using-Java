<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.jobportal.model.User" %>
<%@ page session="true" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h2>Welcome, <%= user.getName() %>!</h2>
<a href="add_job.jsp">Add Job</a> | <a href="view_jobs.jsp">View Jobs</a> | <a href="logout">Logout</a>
</body>
</html>