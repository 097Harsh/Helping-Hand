# Write a program which will allow user to enter 10 numbers and display largest odd 
# number from them. It will display appropriate message in case if no odd number is 
#  found


# mac a function
def find_large_num(number):
    odd_num = [num for num in number if num % 2 != 0]
    
    if not odd_num:
        return None
    
    else:
        return max(odd_num)
    
    
number = []
for i in range(10):
    num = float(input("Enter the number:"))
    number.append(num)
    
largest_odd = find_large_num(number)

#   float('-inf') represents negative infinity It is a special floating-point value that represents the concept of a value that is smaller than any finite number. 

if largest_odd == float('-inf'):
    print("No numbers of odd number")
    
else:
    print("The largest odd number is:",largest_odd)