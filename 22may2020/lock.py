username = input("username: ")
password = input("password: ")

if password == 'e3$WT89x' and username == 'Micheal':
    print("you loged in succesfully")
count = 0
while count <2:
    if password != 'e3$WT89x' or username != 'Micheal':
        print("invalid username or password")
        count+=1
        username = input("username: ")
        password = input("password: ")
        if password == 'e3$WT89x' and username == 'Micheal':
            print("you loged in succesfully")
    if count==2:
        print("account locked")
            

