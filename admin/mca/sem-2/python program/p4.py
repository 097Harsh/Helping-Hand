#   Write a program to make a simple calculator (using functions).

def add(a,b):
    return print(a+b)

def sub(a,b):
    return print(a-b)

def mul(a,b):
    return print(a * b)

def div(a,b):
    return print(a / b)

def mod(a,b):
    return print(a % b)

print("Select your option:")
print("\n1. Addition")
print("\n2. Subtraction")
print("\n3. Multiplication")
print("\n4. Division")
print("\n5. Percentage")

choice = input("Entert your choice betwwen(1,2,3,4,5):")

a = float(input("Enter the number:"))
b = float(input("Enter the number:"))

if choice == '1':
    add(a,b)
    
elif choice == '2':
    sub(a,b)
    
elif choice == '3':
    mul(a,b)
    
elif choice == '4':
    div(a,b)

elif choice == '5':
    mod(a,b)
    
else:
    print("Invalid choice")
    
