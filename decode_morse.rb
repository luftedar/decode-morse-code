def decode_char(str)
  if str == ".-"
    return "A"
  elsif str == "-..."
    return "B"
  elsif str == "---"
    return "O"
  elsif str == "-..-"
    return "X"
  elsif str == "..-."
    return "F"
  elsif str == "..-"
    return "U"
  elsif str == ".-.."
    return "L"
  elsif str == ".-."
    return "R"
  elsif str == ".."
    return "I"
  elsif str == "."
    return "E"
  elsif str == "..."
    return "S"
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
  return output
end

def decode(sentence)
  output = ''
  new_word = ''
  sentence_array = sentence.split('   ')
  sentence_array.each do |word|
    new_word = decode_word(word)
    output += new_word
  end
  return output
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')