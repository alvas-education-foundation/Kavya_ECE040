import time
import os

while True:
    if os.path.exists("file/vegetables.txt"):
        with open("file/vegetables.txt") as file:
            print(file.read())
    else:
        print("file not exist")

    time.sleep(10)