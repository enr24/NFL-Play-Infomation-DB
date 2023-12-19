import sqlite3
import pandas as pd
import matplotlib.pyplot as plt

# import matplotlib.pyplot as plt
con = sqlite3.connect('big_data_bowl.sqlite')
cursor = con.cursor()
cursor.execute('SELECT DISTINCT foulName1, COUNT(foulName1) as "Count" FROM plays WHERE (foulName1 LIKE "Illegal%") group by(foulName1)')
val = cursor.fetchall()
df = pd.DataFrame(val, columns=['Penalty Name', 'Count'])
df_sorted = df.sort_values('Count')
plt.barh(df_sorted['Penalty Name'], df_sorted['Count'])
df.sort_values('Count')
plt.show()
