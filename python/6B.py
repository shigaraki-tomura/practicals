from itertools import islice
with open("TextRead.txt","a+")as file:
     file.write("\n Second Line added to the file")
     file.write("\n Third Line added to the file")
text=open("TextRead.txt")
print(text.read())

