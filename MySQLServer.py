import mysql.connector

# Connect to the MySQL database
mydb = mysql.connector.connect(
        host='localhost',
        username='root',
        password='EMH1@mysqlDB',
        )
    

mycursor = mydb.cursor()

# Create the database library_management if it doesn't exist
mycursor.execute("CREATE DATABASE IF NOT EXISTS library_management")
print("Database library_management created successfully")

# Select the database
mycursor.execute("USE library_management")
print("Database library_management selected successfully")

mycursor.close()
mydb.close()