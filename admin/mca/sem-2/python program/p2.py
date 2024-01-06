#   Write a program in python to swap two variables without using temporary variable.

a = int(input("Enter the number 1:"))
b = int(input("Enter the number 2:"))

a = a + b
b = a - b
a = a - b

print("After value swapping")
print("The value of number 1 is :",a)
print("The value of number 2 is :",b)
