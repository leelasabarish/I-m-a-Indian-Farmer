# IAM A INDIAN FARMER

## Project Overview
"I am an Indian farmer" is a Maven-based Java project that aims to assist farmers in managing their fields effectively. This project allows registered farmers to log in to their accounts and access information about the devices and equipment required for their fields. It also provides up-to-date information about the latest agricultural technology and methods from around the world and updates farmers on government schemes and their eligibility. The project can be accessed from anywhere in the world, and its primary goal is to support and uplift Indian farmers.

## Getting Started
Here is a simple flow chart:

```
graph TD;

  +-------------------+
  |                   |
  |     Home Page     |
  |                   |
  +-------------------+
          |        
          | Register
          V
  +-------------------+
  |                   |
  |     Registration  |
  |                   |
  +-------------------+
          |        
          | Login
          V
  +-------------------+
  |                   |
  |      Login Page   |
  |                   |
  +-------------------+
          |         (User)
          |         /     \
          |       /        \
          |     /            \
          V   /                \
  +-------------------+   +-------------------+
  |                   |   |                   |
  |   User Dashboard  |   |   Admin Dashboard |
  |                   |   |                   |
  +-------------------+   +-------------------+
          |                       |
          | Logout                | Logout
          V                       V
  +-------------------+   +-------------------+
  |                   |   |                   |
  |   Logout Page     |   |    Logout Page    |
  |                   |   |                   |
  +-------------------+   +-------------------+
          |                       |
          | Back to Home Page     | Back to Home Page
          V                       V
  +-------------------+   +-------------------+
  |                   |   |                   |
  |   Error Page      |   |    Error Page     |
  |                   |   |                   |
  +-------------------+   +-------------------+

    
    
   
```
#### Pre-Requirements
The system should have a 2-core processor with a speed of 2 GHz or higher, a minimum of 4 GB RAM, and at least 10 GB of free hard drive space. Java JDK should be downloaded and installed.
#### Softwares
* Eclipse IDE 
* MySQL driver 
*	MySQL database 
*	Apache Tomcat 
*	Postman 
#### Description
 Eclipse IDE is used to write Java code, and MySQL driver is used to connect with the MySQL database. Apache Tomcat is required to deploy the web server, and Postman is used to test the APIs. AWS and Freenom accounts are needed for cloud deployment and domain name provisioning.
 
## Guide

### User Guide
- [x] The user needs to sign up to access the system.
- [x] After logging in, the user can check the necessary devices and equipment for their fields, along with the estimated cost.
- [x] The user can also view the latest farming technologies and methods worldwide and the eligibility for government schemes.
- [x] The user can logout from the system.
- [x] If anything goes wrong, an error page will be displayed.

### Admin Guide
- [x] The admin has to sign in to access the system.
- [x] After logging in, the admin can manage the user data and equipment data.
- [x] The admin can also view the user list and their equipment requirements.
- [x] The admin can logout from the system.
- [x] If anything goes wrong, an error page will be displayed.

## Database Schema
The database for the project includes three tables:
| Tables         | Columns |
| -------------  | ------------- |
| User           | id, username, password, email, contact_no, city, state, pin_code.|
| Admin          | id, username, password,email.|
| Equipment      | id, name, cost, description, availability.|

## Technologies Used
The technologies used in this project 

The project uses the following technologies:
1.	HTML, CSS, and JavaScript for web development
2.	XML, DTD, and XSD for data validation
3.	Servlets and JSP for frontend connectivity to the backend
4.	Spring Boot and Spring MVC for the backend
5.	JDBC and Hibernate Framework for database connectivity
6.	Hibernate Query Language for querying the database
7.	Apache Tomcat as the web server
8.	MySQL for database management
9.  AWS and Freenom are used for cloud deployment and domain name provisioning.

## Code Structure
#### The project is divided into four modules
##### Basic, Separation, Functionality, and Fall. 
- The Basic module contains the home, sign-in, sign-up, and about pages. :+1:
- The Separation module contains the user and admin pages. :+1:
- The Functionality module contains the admin working and user working pages. :+1:
- The Fall module contains the logout and error pages. :+1:
   

> scr directory contains all of the source material for building the project.
1. CreateUserServlet.java
2. AdminLogin.java
3. LoginServlet.java
4. logout.java



## Testing
Testing is a crucial part of software development. JUnit is used for unit testing, and Postman is used for API testing. JUnit testing is useful for testing individual units of code, whereas Postman is used for testing the APIs.

## Known Issues
- [ ] Users `cannot` communicate with the admin in this project.

## Future Work
<details>
<summary>The project could also be expanded </summary>

        Integrate a chatbot for communication between users and the admin.
        Improve the project's performance and security.
        Additionally, the project could be integrated with social media platforms to increase user engagement. 

</details>


