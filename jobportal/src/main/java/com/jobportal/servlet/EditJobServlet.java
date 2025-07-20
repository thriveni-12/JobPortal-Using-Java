package com.jobportal.servlet;

import com.jobportal.util.DBConnection;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class EditJobServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String company = request.getParameter("company");
        String location = request.getParameter("location");

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "UPDATE jobs SET title=?, company=?, location=? WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, title);
            ps.setString(2, company);
            ps.setString(3, location);
            ps.setInt(4, Integer.parseInt(id));
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("view_jobs.jsp");
    }
}
