#Q4. Write R commands to do the following:
library(RMySQL)
driver <- dbDriver("MySQL")
con <- dbConnect(driver,
                 dbname = 'RPractical',
                 host = 'localhost',
                 port = 3306,
                 user = 'root',
                 password = "*insert_your_pswd_here")

#a. Create a sample STUDENT table in the MySQL database.
dbSendQuery(con, "CREATE TABLE STUDENT (
                    id INT NOT NULL AUTO_INCREMENT,
                    name VARCHAR(50) NOT NULL,
                    age INT,
                    grade VARCHAR(2),
                    PRIMARY KEY (id))")


#b. Insert 5 rows into the STUDENT table.
dbSendQuery(con, "INSERT INTO STUDENT (name, age, grade) 
                    VALUES ('John', 18, 'A'), 
                           ('Jane', 19, 'B'),
                           ('Bob', 17, 'C'),
                           ('Alice', 20, 'A'),
                           ('Sam', 18, 'B')")

#c. Display all the information stored in STUDENT table.
result <- dbSendQuery(con, "SELECT * FROM STUDENT")
df <- dbFetch(result)
df

#d. Delete all the rows from STUDENT table.
dbSendQuery(con, "DELETE FROM STUDENT")

#e. Drop the STUDENT table.
dbSendQuery(con, "DROP TABLE STUDENT")
