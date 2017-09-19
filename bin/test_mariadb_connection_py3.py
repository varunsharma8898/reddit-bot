#!/usr/bin/python3.6

import pymysql

mariadb_connection = pymysql.connect(host='172.17.0.4', port=3306, user='root', passwd='mypass', db='varun')

cur = mariadb_connection.cursor()
cur.execute("SELECT * FROM authors")

print(cur.description)
print()

for row in cur:
    print(row)

cur.close()
mariadb_connection.close()