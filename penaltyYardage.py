import sqlite3
import pandas as pd
import matplotlib.pyplot as plt

con = sqlite3.connect('big_data_bowl.sqlite')
cursor = con.cursor()
cursor.execute(""" SELECT penaltyYards FROM Plays WHERE (foulName1 NOT LIKE 'NA');""")
val = cursor.fetchall()
print(val)
penaltyYards = []
for i in val:
    penaltyYards.append(i[0])
df = pd.DataFrame({'Penalty yards': penaltyYards})
print(df.head(2))
df.plot.hist()
plt.show()
