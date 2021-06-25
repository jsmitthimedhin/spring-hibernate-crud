# spring-hibernate-crud

## About
Spring-Hibernate-CRUD is a simple database application for companies that allows users to Create, Read, Update, and Delete customer information.

*This program is similar to my previous repo, JDBC-crud, except built with Spring and Hibernate.

## What I learned

I built this program as an attempt to understand how Hibernate communicates with a MySQL database. I also used a common architecture (MVC -> Service -> DAO -> Database) for Java programs to accomplish this by building a seperate CustomerDAO class to communicate directly with the database while also building a Service class as a way to compile different DAOs together (though in this case, a Service class is really unnecessary since we're only pulling from one DAO).

I was also able to practice using the Spring framework on the front-end using the MVC model and a Spring configuration file. Similar to the previous JDBC-CRUD project, the CSS is kept to a bare-minimum since I'm mostly focused on back-end to front-end communication.


Credit of the original application idea goes to Chad Darby in his Udemy course, "Spring & Hibernate for Beginners"

## How to use
1. Run the SQL files on MySQL
2. Using Eclipse, connect the Tomcat server (I use v.9, if you don't have Tomcat, then you must install it before the program can be run, or you can use a different web-server of your choice).
3. Run the program in the Tomcat server. 
