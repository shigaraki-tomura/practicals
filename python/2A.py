def find_vowel(s):
 l=['a','e','i','o','u','A','E','I','O','U']
 for i in s:
     if i in l:
         print("True")
     else:
         print("False")
s=input("Enter any word to check it vowel or not::")
find_vowel(s)
