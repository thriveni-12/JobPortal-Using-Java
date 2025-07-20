package com.jobportal.servlet;

import com.jobportal.dao.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/addJob")
public class AddJobServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");

        try (Connection conn = DBConnect.getConnection()) {
            String sql = "INSERT INTO jobs(title, description) VALUES (?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, title);
            ps.setString(2, description);

            ps.executeUpdate();
            response.sendRedirect("view_jobs.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("add_job.jsp?error=1");
        }
    }
}
