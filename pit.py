import psycopg2
import numpy as np 
import matplotlib.pyplot as mp 
con = psycopg2.connect("dbname=lab24 user=postgres host=127.0.0.1 port=5432")
cur = con.cursor()
cur.execute("SELECT x, y FROM fn ORDER BY x;")
arr = cur.fetchall()
cur.close()
con.close()
x, y = np.array(arr).T
mp.plot(x, y)
mp.title('sine wave')
mp.xlabel('x')
mp.ylabel('y = sin(x)')
mp.grid(True, which = 'both')
mp.axhline(y = 0, color = 'k')
mp.show()