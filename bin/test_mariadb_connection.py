#!/usr/bin/python3

import pymysql

mariadb_connection = pymysql.connect(host='vsharma-mariadb', port=3306, user='root', passwd='mypass', db='messaround')

cur = mariadb_connection.cursor()
cur.execute("SELECT * FROM authors")

print(cur.description)
print()

for row in cur:
    print(row)

cur.close()
mariadb_connection.close()