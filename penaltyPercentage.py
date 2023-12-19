import sqlite3
con = sqlite3.connect('big_data_bowl.sqlite')
cursor = con.cursor()
cursor.execute('SELECT COUNT(foulName1) as  "No Penalty" FROM plays WHERE (foulName1 LIKE "NA")')
no_penalty = cursor.fetchone()[0]
cursor.execute(""" SELECT COUNT(foulName1) as "Total Penalties" from plays""")
tot_penalty = cursor.fetchone()[0]
print((no_penalty/tot_penalty) * 100)
