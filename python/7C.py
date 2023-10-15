class Number:
     Multiplier=10
     def __init__(self,x,y):
         self.x=x
         self.y=y
     def add(self):
         return(self.x+self.y)
     @classmethod
     def multiply(cls,a):
         return(cls.Multiplier*a)
     @staticmethod
     def sub(b,c):
         return(b-c)
     @property
     def value(self):
         return(self.x,self.y)
     def s_value(self,x,y):
         self.x=x
         self.y=y
     def d_value(self):
         del self.x
         del self.y
N=Number(20,30)
N=Number(20,30)
24
print("Addition=",N.add())
print("Multiplication=",N.multiply(5))
print("Subtraction=",Number.sub(9,6))
print("Property value=",N.value)
print("Set value=",N.s_value(4,3))
print("Property value=",N.value)
print("Deleted value=",N.d_value())
