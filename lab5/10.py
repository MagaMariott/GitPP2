import re

def camel_to_snake(camel_case):
    snake_case = re.sub(r'([a-z0-9])([A-Z])', r'\1_\2', camel_case).lower()
    return snake_case

camel_case_string = input("Enter a camel case string: ")
snake_case_string = camel_to_snake(camel_case_string)

print(f'Camel case: {camel_case_string}')
print(f'Snake case: {snake_case_string}')
