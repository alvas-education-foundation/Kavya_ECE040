myfile = open ("file/fruits.txt")
content = myfile.read()
myfile.close()

with open("file/fruit.txt") as myfile:
    content = myfile.read()

print(content)

with open("file/vegitables.txt" , "w") as myfile:
    myfile.write("tomato\ncucumber\nOnion")