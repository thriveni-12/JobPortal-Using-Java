package com.jobportal.model;

import java.sql.Timestamp;

public class Job {
    private int id;
    private String title;
    private String company;
    private String qualifications;
    private String description;
    private String location;
    private int postedBy;
    private Timestamp postedOn;

    // Default constructor
    public Job() {}

    // Constructor for insert (without id and postedOn)
    public Job(String title, String company, String qualifications, String description, String location, int postedBy) {
        this.title = title;
        this.company = company;
        this.qualifications = qualifications;
        this.description = description;
        this.location = location;
        this.postedBy = postedBy;
    }

    // Constructor for update (with id but without postedOn)
    public Job(int id, String title, String company, String qualifications, String description, String location, int postedBy) {
        this.id = id;
        this.title = title;
        this.company = company;
        this.qualifications = qualifications;
        this.description = description;
        this.location = location;
        this.postedBy = postedBy;
    }

    // Constructor for reading full job (with postedOn)
    public Job(int id, String title, String company, String qualifications, String description, String location, int postedBy, Timestamp postedOn) {
        this.id = id;
        this.title = title;
        this.company = company;
        this.qualifications = qualifications;
        this.description = description;
        this.location = location;
        this.postedBy = postedBy;
        this.postedOn = postedOn;
    }

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getQualifications() {
        return qualifications;
    }

    public void setQualifications(String qualifications) {
        this.qualifications = qualifications;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getPostedBy() {
        return postedBy;
    }

    public void setPostedBy(int postedBy) {
        this.postedBy = postedBy;
    }

    public Timestamp getPostedOn() {
        return postedOn;
    }

    public void setPostedOn(Timestamp postedOn) {
        this.postedOn = postedOn;
    }
}
