def decode_char(str)
  @morse_to_char = {
    '.-' => 'A',
    '-...' => 'B',
    '---' => 'O',
    '-..-' => 'X',
    '..-.' => 'F',
    '..-' => 'U',
    '.-..' => 'L',
    '.-.' => 'R',
    '..' => 'I',
    '.' => 'E',
    '...' => 'S',
    '--' => 'M',
    '-.--' => 'Y'
  }
  @morse_to_char[str]
end

def decode_word(word)
  output = ''
  new_char = ''
  word_array = word.split
  word_array.each do |str|
    new_char = if str.to_s == '/'
                 ' '
               else
                 decode_char(str).to_s
               end
    output += new_char
  end
  output
end
