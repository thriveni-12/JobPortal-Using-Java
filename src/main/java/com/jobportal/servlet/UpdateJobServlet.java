package com.jobportal.servlet;

import com.jobportal.dao.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/updateJob")
public class UpdateJobServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int jobId = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String description = request.getParameter("description");

        try (Connection conn = DBConnect.getConnection()) {
            String sql = "UPDATE jobs SET title=?, description=? WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, title);
            ps.setString(2, description);
            ps.setInt(3, jobId);

            ps.executeUpdate();
            response.sendRedirect("view_jobs.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("edit_job.jsp?id=" + jobId + "&error=1");
        }
    }
}
