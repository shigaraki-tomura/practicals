def rev(num):
     a=0
     while(num>0):
         b=num%10
         a=(a*10)+b
         num=num//10
     print("reverse number is::",a)
a=int(input("Enter any number::"))
rev(a)
