#   Write a Python program to check if the number provided by the user is a palindrome or not.

i = int(input("Enter the number"))
rev = 0
x = i

while (i>0):
    rev = (rev * 10)+i % 10
    i = i // 10
    
if (x == rev):
    print("number is pelindrome")
    
else:
    print("number is not pelindrome")