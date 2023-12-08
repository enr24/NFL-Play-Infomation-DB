import sqlite3
import pandas as pd
import matplotlib.pyplot as plt

con = sqlite3.connect('big_data_bowl.sqlite')
cursor = con.cursor()
cursor.execute("SELECT yardsToGo from plays")
val = cursor.fetchall()
yardsToGo = []
for i in val:
    yardsToGo.append(i[0])
# print(yardsToGo)
df = pd.DataFrame({'Yards to Go': yardsToGo})
print(df.head(2))
df.plot.hist()
plt.show()
