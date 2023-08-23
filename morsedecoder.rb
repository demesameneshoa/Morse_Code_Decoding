# Decod a single character
def decode_char(character)
  morse_dict = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
                 '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
                 '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
                 '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z' }

  morse_dict[character]
end

# Decode a word
def decode_word(word)
  word.split(' ').map { |char| decode_char(char) }.join
end

# Decode a sentence
def decode_morse(morse_code)
  morse_code.split('   ').map { |word| decode_word(word) }.join(' ')
end


decoded_value = decode_char('..')

puts decoded_value
