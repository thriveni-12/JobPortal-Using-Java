package com.jobportal.servlet;

import com.jobportal.dao.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/deleteJob")
public class DeleteJobServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int jobId = Integer.parseInt(request.getParameter("id"));

        try (Connection conn = DBConnect.getConnection()) {
            String sql = "DELETE FROM jobs WHERE id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, jobId);

            ps.executeUpdate();
            response.sendRedirect("view_jobs.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("view_jobs.jsp?error=1");
        }
    }
}
