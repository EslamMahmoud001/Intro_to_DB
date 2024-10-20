import mysql.connector

# Connect to the MySQL database
mydb = mysql.connector.connect(
        host='localhost',
        username='root',
        password='EMH1@mysqlDB',
        )
    

mycursor = mydb.cursor()

# Create the database library_management if it doesn't exist
try: 
    # Connect to the MySQL database
    mydb = mysql.connector.connect(
            host='localhost',
            username='root',
            password='EMH1@mysqlDB',
            database='alx_book_store'
            )
except mysql.connector.Error:
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")
    

# Select the database
mycursor.execute("USE alx_book_store")
print("Database alx_book_store selected successfully")

mycursor.close()
mydb.close()