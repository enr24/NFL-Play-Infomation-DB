import sqlite3
import pandas as pd
import matplotlib.pyplot as plt
# Making a histogram for passLength
con = sqlite3.connect('big_data_bowl.sqlite')
cursor = con.cursor()
cursor.execute("SELECT passLength from plays WHERE (passResult LIKE 'C')")
val = cursor.fetchall()
passlengths = []
for i in val:
    passlengths.append(i[0])
print(passlengths)
df = pd.DataFrame({'Length': passlengths})
print(df.head(2))
# plt.figure()
df.plot.hist()
plt.show()
