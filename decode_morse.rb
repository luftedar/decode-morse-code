def decode_char(str)
  case str
  when '.-'
    'A'
  when '-...'
    'B'
  when '---'
    'O'
  when '-..-'
    'X'
  when '..-.'
    'F'
  when '..-'
    'U'
  when '.-..'
    'L'
  when '.-.'
    'R'
  when '..'
    'I'
  when '.'
    'E'
  when '...'
    'S'
  end
end

def decode_word(word)
  output = ''
  new_char = ''
  word_array = word.split
  word_array.each do |str|
    new_char = decode_char(str)
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
    output += new_word
  end
  output
end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
