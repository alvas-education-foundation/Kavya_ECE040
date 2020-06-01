import time
import os
import pandas 

while True:
    if os.path.exists("file/temp_today.csv"):
        data = pandas.read_csv("file/temp_today.csv")
        print(data.mean())        
    else:
        print("file does not exist.")           
    time.sleep(10)