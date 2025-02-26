# CONNECTING MYSQL WITH PYTHON

import mysql.connector

connection = mysql.connector.connect(
    host = 'localhost' ,
    user = 'root' ,
    password = 'arkan@riyasat' 
)

# if connection.is_connected():
# connection.close()


#  CREATING A DATABASE IN MYSQL USING PYTHON

# if connection.is_connected():
    # print("Connection established with the database")

    # cursor = connection.cursor()

    # cursor.execute("Create database mysqlconnection")
    # print("Database 'mysqlconnection' created.")

    # connection.database = "mysqlconnection"
    # ct = "Create table students(ID int, Name varchar(50), Age int, Address varchar(100))"
    # cursor.execute(ct)
    # print("Table 'students' created.")
    # connection.commit()


    # insert = "insert into students(ID, Name, Age, Address) values(%s,%s,%s,%s)"
    # data = [(101,"Fareesa",19,"Hyderabad"),(102,"Hibah",23,"Delhi")]
    # cursor.executemany(insert,data)
    # connection.commit()
    # print("Data inserted.")
    # connection.commit()


    # connection.database = "SQL_TASKS"
    # insert = "insert into employees (Name, Department, Salary, Hire_date) values (%s,%s,%s,%s)"
    # data = [("Fareesa","HR",100000,"2005-06-01")]
    # cursor.executemany(insert,data)
    # connection.commit()


    # upd = "update employees set Department = 'Admin' where emp_ID = 9"
    # cursor.execute(upd)
    # connection.commit()
    # print("Table updated.")

    # delete = "Delete from employees where emp_ID = 9"
    # cursor.execute(delete)
    # connection.commit()
    # print("Value deleted.")
# connection.close()
 

# if connection.is_connected():
    # print("Connection established.")

    # cursor = connection.cursor()

    # cursor.execute("create database python")
    # print("Database created.")

    # connection.database = "python"
    # create = "create table Books(Book_id int , Title varchar(100), Author varchar(100) , Year_published int, Genre varchar(50))"
    # print("Table created.")

    # insert = "insert into Books(Book_id, Title, Author, Year_published, Genre)  values (%s,%s,%s,%s,%s)"
    # data = [(1,"To Kill a Mockingbird", "Lee", 1960, "Fiction"), (2,"Atomic Habits", "James Clear", 2018, "Self-Help"), (3,"Sapiens: A Brief History of Humankind", "Yuval Noah Harari", 2011, "Non-Fiction")]
    # print("Data inserted.")

    # update = "update Books set Year_published = 2000 where Book_id = 1"
    # print("Table updated.")

    # delete = "Delete from Books where Book_id = 2"
    # cursor.execute(delete)
    # connection.commit()
    # print("Value deleted.")

    # show = "select * from Books"                                
    # cursor.execute(show)                                        
    # abcd = cursor.fetchall()                                    
    # print("Data in table is: ")
    # for show in abcd:
    #     print(show)
    # connection.commit()
    # cursor.close()
# connection.close()


if connection.is_connected():
    # print("Connection established.")

    cursor = connection.cursor()

    connection.database = 'python'

    # create = "create table employees (emp_id int primary key auto_increment, name varchar(100), position varchar(50), salary decimal(10,2))"
    # cursor.execute(create)
    # connection.commit()
    # print("Table created.")

    # insert = "insert into employees(name, position, salary)  values(%s,%s,%s)"
    # data = [('Sarah Martinez', 'Content Strategist', 72000), ('John Brown', 'Network Administrator', 68000), ('Emily White', 'Technical Lead', 70000), ('Michael Harris', 'HR Specialist', 75000)]
    # cursor.executemany(insert, data)
    # print("Data inserted.")

    # insert = "insert into employees(name, position, salary)  values(%s,%s,%s)"
    # data = [('Emily Anderson', 'Technical Support Specialist', 72000), ('Patricia Robinson', 'Operations Analyst', 75000),( 'Daniel Wilson', 'Product Designer', 70000), ('James Harry', 'HR Manager', 75000)]
    # cursor.executemany(insert, data)
    # print("Data inserted.")
    # connection.commit()

    show = "select name, position, salary from employees where salary >73000"
    cursor.execute(show)

    abcd = cursor.fetchall()
    for show in abcd:
        print(show)

    # update = "update employees set position = 'CEO' where emp_id = 7"
    # cursor.execute(update)
    # connection.commit()
    # print("Table updated.")

    delete = "delete from employees where emp_id = 4"
    cursor.execute(delete)
    connection.commit()
    print("Entry deleted.")

connection.close()

