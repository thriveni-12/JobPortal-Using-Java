package com.jobportal.dao;

import com.jobportal.model.Job;
import com.jobportal.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class JobDAO {

    private Connection conn;

    // No-argument constructor
    public JobDAO() {
        try {
            conn = DBConnection.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Insert Job
    public boolean insertJob(Job job) {
        boolean success = false;
        String sql = "INSERT INTO jobs (title, company, qualifications, description, location, posted_by) VALUES (?, ?, ?, ?, ?, ?)";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, job.getTitle());
            stmt.setString(2, job.getCompany());
            stmt.setString(3, job.getQualifications());
            stmt.setString(4, job.getDescription());
            stmt.setString(5, job.getLocation());
            stmt.setInt(6, job.getPostedBy());

            int rows = stmt.executeUpdate();
            success = rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return success;
    }

    // Get all jobs
    public List<Job> getAllJobs() {
        List<Job> jobs = new ArrayList<>();
        String sql = "SELECT * FROM jobs ORDER BY posted_on DESC";

        try (Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Job job = new Job();
                job.setId(rs.getInt("id"));
                job.setTitle(rs.getString("title"));
                job.setCompany(rs.getString("company"));
                job.setQualifications(rs.getString("qualifications"));
                job.setDescription(rs.getString("description"));
                job.setLocation(rs.getString("location"));
                job.setPostedBy(rs.getInt("posted_by"));
                // Skip setPostedOn if method not defined
                // job.setPostedOn(rs.getTimestamp("posted_on")); // optional if method not present
                jobs.add(job);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return jobs;
    }

    // Update Job
    public boolean updateJob(Job job) {
        boolean success = false;
        String sql = "UPDATE jobs SET title = ?, company = ?, qualifications = ?, description = ?, location = ? WHERE id = ?";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, job.getTitle());
            stmt.setString(2, job.getCompany());
            stmt.setString(3, job.getQualifications());
            stmt.setString(4, job.getDescription());
            stmt.setString(5, job.getLocation());
            stmt.setInt(6, job.getId());

            int rows = stmt.executeUpdate();
            success = rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return success;
    }

    // Get Job by ID
    public Job getJobById(int id) {
        Job job = null;
        String sql = "SELECT * FROM jobs WHERE id = ?";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                job = new Job();
                job.setId(rs.getInt("id"));
                job.setTitle(rs.getString("title"));
                job.setCompany(rs.getString("company"));
                job.setQualifications(rs.getString("qualifications"));
                job.setDescription(rs.getString("description"));
                job.setLocation(rs.getString("location"));
                job.setPostedBy(rs.getInt("posted_by"));
                // Skip setPostedOn if not defined
                // job.setPostedOn(rs.getTimestamp("posted_on"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return job;
    }

    // Delete Job
    public boolean deleteJob(int id) {
        boolean success = false;
        String sql = "DELETE FROM jobs WHERE id = ?";

        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            int rows = stmt.executeUpdate();
            success = rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return success;
    }
}
