# JobPortal-Using-Java
A Java-based web application built using Servlets, JSP, and MySQL, designed to help recruiters post jobs and job seekers browse them. Developed and deployed using Eclipse IDE and Apache Tomcat 10, following the MVC architecture.

🚀 Key Technologies
Technology	Role
Java	Core programming language
Servlets (Jakarta EE)	Backend logic and request handling
JSP	Dynamic web page rendering
MySQL	Database management
Eclipse IDE	Development environment
Apache Tomcat 10	Web application server

🛠️ Project Setup in Eclipse (Step-by-Step)
✅ Prerequisites
✅ Java JDK 17+

✅ Apache Tomcat 10 installed and configured in Eclipse

✅ MySQL server running

✅ Eclipse IDE for Enterprise Java Developers

⚙️ Steps to Run in Eclipse
Clone the Project

bash
Copy
Edit
git clone https://github.com/YourUsername/jobportal.git
Import into Eclipse

Open Eclipse

Go to File > Import > Maven > Existing Maven Projects (or)
File > New > Dynamic Web Project (if not using Maven)

Select the project root folder

Configure Apache Tomcat 10

Go to Window > Preferences > Server > Runtime Environments

Add Tomcat 10 with appropriate path

Right-click project → Run on Server → Choose Tomcat 10

Setup MySQL Database

sql
Copy
Edit
CREATE DATABASE jobportal;
USE jobportal;

CREATE TABLE jobs (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255),
  company VARCHAR(255),
  qualifications VARCHAR(255),
  description TEXT,
  posted_by INT,
  posted_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  location VARCHAR(255)
);
Update DB Connection
In your Java class (e.g., DBConnection.java):

java
Copy
Edit
private static final String URL = "jdbc:mysql://localhost:3306/jobportal";
private static final String USER = "root";
private static final String PASSWORD = "your_password";
Run the Project

Open in browser:
http://localhost:8080/jobportal/

📌 Core Servlet Classes
Servlet Name	Functionality
AddJobServlet	Adds a new job to DB
EditJobServlet	Updates existing job entry
DeleteJobServlet	Deletes job by ID
ViewJobsServlet	Displays all jobs (optional)

All servlets are under:

swift
Copy
Edit
src/com/jobportal/servlet/
They interact with:

Model: Job.java (POJO)

DAO Layer: JobDAO.java (CRUD operations)

🖥️ Sample Folder Structure (Eclipse + Servlets)
bash
Copy
Edit
jobportal/
├── src/
│   └── com/jobportal/
│       ├── model/        # Job.java
│       ├── dao/          # JobDAO.java
│       └── servlet/      # All servlet classes
├── WebContent/ or src/main/webapp/
│   ├── *.jsp             # JSP frontend pages
│   └── WEB-INF/web.xml   # Servlet mappings
├── pom.xml (if Maven)
└── README.md
💡 Why Eclipse + Servlets?
🎯 Eclipse provides robust support for Java EE (Jakarta EE) development.

⚙️ Servlets offer fine-grained control over HTTP requests.

📦 Easy deployment on Tomcat 10 with jakarta.servlet API support.

🔄 Clean separation of logic with MVC pattern.

📞 Questions or Support?
If you need help running this project in Eclipse, deploying with Tomcat 10, or debugging servlets, feel free to ask here or open an issue on the GitHub repository.

Would you like a demo .gitignore or web.xml sample file included as well?
