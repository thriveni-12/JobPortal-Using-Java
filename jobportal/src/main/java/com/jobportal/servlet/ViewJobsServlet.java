package com.jobportal.servlet;

import com.jobportal.dao.JobDAO;
import com.jobportal.model.Job;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/ViewJobsServlet")
public class ViewJobsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            JobDAO jobDAO = new JobDAO(); // Make sure this constructor exists
            List<Job> jobs = jobDAO.getAllJobs();

            // Set jobs in request scope
            request.setAttribute("jobs", jobs);

            // Forward to JSP page
            request.getRequestDispatcher("view_jobs.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
