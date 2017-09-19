#!/usr/bin/python

import mysql.connector as mariadb
mariadb_connection = mariadb.connect(user='root', password='mypass', host='172.17.0.4', database='varun')
cursor = mariadb_connection.cursor()

# retrieving information
some_name = 'varun'
cursor.execute("SELECT first_name,last_name FROM authors WHERE first_name=%s", (some_name,))

for first_name, last_name in cursor:
    print("First name: {}, Last name: {}").format(first_name, last_name)

# # insert information
# try:
#     cursor.execute("INSERT INTO authors (first_name,last_name) VALUES (%s,%s)", ('Maria', 'DB'))
# except mariadb.Error as error:
#     print("Error: {}".format(error))
#
# mariadb_connection.commit()
# print("The last inserted id was: ", cursor.lastrowid)

mariadb_connection.close()
