package com.jobportal.dao;

import com.jobportal.model.Job;
import java.sql.*;
import java.util.*;

public class JobDAO {
    public boolean addJob(Job job) {
        String sql = "INSERT INTO jobs (title, description, company) VALUES (?, ?, ?)";
        try (Connection conn = DBConnect.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, job.getTitle());
            stmt.setString(2, job.getDescription());
            stmt.setString(3, job.getCompany());
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Job> getAllJobs() {
        List<Job> list = new ArrayList<>();
        String sql = "SELECT * FROM jobs";
        try (Connection conn = DBConnect.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                list.add(new Job(rs.getInt("id"), rs.getString("title"), rs.getString("description"), rs.getString("company")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean deleteJob(int id) {
        String sql = "DELETE FROM jobs WHERE id=?";
        try (Connection conn = DBConnect.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateJob(Job job) {
        String sql = "UPDATE jobs SET title=?, description=?, company=? WHERE id=?";
        try (Connection conn = DBConnect.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, job.getTitle());
            stmt.setString(2, job.getDescription());
            stmt.setString(3, job.getCompany());
            stmt.setInt(4, job.getId());
            return stmt.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public Job getJobById(int id) {
        String sql = "SELECT * FROM jobs WHERE id=?";
        try (Connection conn = DBConnect.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new Job(id, rs.getString("title"), rs.getString("description"), rs.getString("company"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
