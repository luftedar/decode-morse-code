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

def decode(sentence)
  output = ''
  new_word = ''
  sentence_array = sentence.split('   ')
  sentence_array.each do |word|
    new_word = decode_word(word)
    output = "#{output}#{new_word} "
  end
  output
end

puts decode_char('.-')
puts decode_char('--')
puts decode_char('-.--')
puts decode_word('-- -.--')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
