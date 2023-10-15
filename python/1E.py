def armstrong(num):
 sum=0
 temp=num
 while temp>0:
     digit=temp%10
     sum+=digit**3
     temp//=10
 if num==sum:
     print(num,"is an armstrong number")
 else:
     print(num,"is not an armstrong number")
def palindrome(num):
     n=num
     rev=0
     while num!=0:
         rev=rev*10
         rev=rev+int(num%10)
         num=int(num/10)
     if n==rev:
         print(n,"is palindrome number")
     else:
         print(n,"is not a palindrome number")
num=int(input("Enter a number to check it is armstrong or not: "))
armstrong(num)
num=int(input("Enter a number to check it is palindrome or not: "))
palindrome(num)
