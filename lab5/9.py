import re

def insert_spaces(input_string):
    modified_string = re.sub(r'([a-z])([A-Z])', r'\1 \2', input_string)
    return modified_string

input_string = input("Enter a string: ")
modified_string = insert_spaces(input_string)

print(f'Original string: {input_string}')
print(f'Modified string: {modified_string}')
