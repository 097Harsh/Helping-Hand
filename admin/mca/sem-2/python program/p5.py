#   Write a program in python to find out maximum and minimum number out of three user entered number.

def find_max(a,b,c):
    return max(a,b,c)

def find_min(a,b,c):
    return min(a,b,c)

a = float(input("Enter the number 1:"))
b = float(input("Enter the number 2:"))
c = float(input("Enter the number 3:"))

max = find_max(a,b,c)
min = find_min(a,b,c)

print("The maximum number is:",max)
print("The minimum number is:",min)

