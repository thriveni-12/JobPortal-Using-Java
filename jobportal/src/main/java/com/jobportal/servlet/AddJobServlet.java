package com.jobportal.servlet;

import com.jobportal.dao.JobDAO;
import com.jobportal.model.Job;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/AddJobServlet")
public class AddJobServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String title = request.getParameter("title");
            String company = request.getParameter("company");
            String qualifications = request.getParameter("qualifications");
            String description = request.getParameter("description");
            int postedBy = Integer.parseInt(request.getParameter("posted_by"));
            String location = request.getParameter("location");

            Job job = new Job();
            job.setTitle(title);
            job.setCompany(company);
            job.setQualifications(qualifications);
            job.setDescription(description);
            job.setPostedBy(postedBy);
            job.setLocation(location);

            JobDAO jobDAO = new JobDAO();
            boolean inserted = jobDAO.insertJob(job);

            if (inserted) {
                response.sendRedirect("view_jobs.jsp");
            } else {
                response.getWriter().write("Failed to insert job");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error: " + e.getMessage());
        }
    }
}
