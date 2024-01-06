#   Write a Python Program to Convert Celsius to Fahrenheit and vice –a-versa

def celsius_to_fahrenheit(celsius):
    return (celsius * 9/5) + 32

def fahrenheit_to_celsius(fahrenheit):
    return (fahrenheit - 32) * 5/9

choice = input("Select conversion:\n1.Celsion to fahrenheit: \n2Fahrenheit to celsion \nEnter your choice between 1 or 2:")

if choice == '1':
    celsius = float(input("Enter temperature in Celsius: "))
    fahrenheit = celsius_to_fahrenheit(celsius)
    print(f"{celsius} Celsius is equal to {fahrenheit:.2f} Fahrenheit")

elif choice == '2':
    fahrenheit = float(input("Enter temperature in Fahrenheit: "))
    celsius = fahrenheit_to_celsius(fahrenheit)
    print(f"{fahrenheit} Fahrenheit is equal to {celsius:.2f} Celsius")

else:
    print("Invalid choice")
    
    
##choice = input(
#    "Select conversion:\n1.Celsion to fahrenheit: \n2Fahrenheit to celsion \nEnter your choice between 1 or 2:"
#)

#if choice == '1':
 # celsius = float(input("Enter temperature in Celsius: "))
  #fahrenheit = (celsius * 9 / 5) + 32
  #print(f"{celsius} Celsius is equal to {fahrenheit:.2f} Fahrenheit")

#elif choice == '2':
 # fahrenheit = float(input("Enter temperature in Fahrenheit: "))
  #celsius = (fahrenheit - 32) * 5 / 9
  #print(f"{fahrenheit} Fahrenheit is equal to {celsius:.2f} Celsius")

#else:
 # print("Invalid choice")
    