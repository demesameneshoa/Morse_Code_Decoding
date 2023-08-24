def decode_char(character)
  morse_dict = {
    '.-'   => 'A',   '-...' => 'B',   '-.-.' => 'C',   '-..'  => 'D',   '.'    => 'E',
    '..-.' => 'F',   '--.'  => 'G',   '....' => 'H',   '..'   => 'I',   '.---' => 'J',
    '-.-'  => 'K',   '.-..' => 'L',   '--'   => 'M',   '-.'   => 'N',   '---'  => 'O',
    '.--.' => 'P',   '--.-' => 'Q',   '.-.'  => 'R',   '...'  => 'S',   '-'    => 'T',
    '..-'  => 'U',   '...-' => 'V',   '.--'  => 'W',   '-..-' => 'X',   '-.--' => 'Y',
    '--..' => 'Z'
  }

  morse_dict[character]
end

def decode_word(word)
  word.split.map { |char| decode_char(char) }.join
end

def decode_morse(morse_code)
  morse_code.strip.split('   ').map { |word| decode_word(word) }.join(' ')
end

charachter = '._'
puts decode_char(charachter)

word = '-- -.--'
puts decode_word(word)

sentence = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts decode_morse(sentence)
