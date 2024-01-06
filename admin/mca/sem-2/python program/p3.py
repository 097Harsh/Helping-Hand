#   Write a Python Program to Convert Decimal to Binary, Octal and Hexadecimal
decimal_num = int(input("Enter a decimal number: "))

binary_num = bin(decimal_num)[2:]
octal_num = oct(decimal_num)[2:]
hexadecimal_num = hex(decimal_num)[2:]

print(f"Decimal {decimal_num} is equivalent to:")
print(f"Binary: {binary_num}")
print(f"Octal: {octal_num}")
print(f"Hexadecimal: {hexadecimal_num}")
