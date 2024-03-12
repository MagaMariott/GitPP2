def split_at_uppercase(input_string):
    result = []
    current_word = ""

    for char in input_string:
        if char.isupper():
            if current_word:
                result.append(current_word)
            current_word = char
        else:
            current_word += char

    if current_word:
        result.append(current_word)

    return result

input_string = input("Enter a string: ")
split_words = split_at_uppercase(input_string)

print(f'String: {input_string}')
print(f'Split at uppercase letters: {split_words}')
