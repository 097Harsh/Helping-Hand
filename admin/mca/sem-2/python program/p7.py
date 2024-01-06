# Write a Python program to check if the number provided by the user is an Armstrong number.

num = int(input("Enter the number:"))

sum = 0
temp = num

while temp>0:
    digit = temp % 10
    cube = digit ** 3       # the logic is 153 = (1*1*1) + (5*5*5) + (3*3*3) = 1 + 125 + 27 = 153
    sum = sum + cube
    temp //= 10
    
if sum == num:
    print(num,"It is an armstrong number")
    
else:
    print("Is not a armstrong number")
    
    