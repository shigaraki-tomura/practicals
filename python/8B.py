try:
     number=int(input("Enter a number between 1-10:"))
     r=100/number
except(ValueError):
     print("Please enter number only")
except(ZeroDivisionError):
     print("Please enter number between 1-10")
else:
     print("Result:",r)
finally:
     print("you are in finally block")
