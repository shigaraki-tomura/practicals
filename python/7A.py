class student:
     def __init__(self,name,address,mobile,email):
         self.name=name
         self.address=address
         self.mobile=mobile
         self.email=email
     def display(self):
         print("Name:",name)
         print("Address:",address)
         print("Mobile:",mobile)
         print("Email:",email)
print("Enter your details:")
name=input("Enter your name:")
address=input("Enter your address:")
mobile=input("Enter your mobile:")
email=input("Enter your Email:")
s=student(name,address,mobile,email)
s.display()
