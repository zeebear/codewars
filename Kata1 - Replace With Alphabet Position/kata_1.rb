LETTERS = ('a'..'z').to_a
NUMBERS = (1..26).to_a

def alphabet_position(text)
  table = {}
  LETTERS.each_with_index do |letter, index|
    table[letter.to_sym] = NUMBERS[index]
  end

  position = ''
  text.split('').map do |char|
    unless text.split('').last == char
      position += "#{table[char.to_sym]} " if LETTERS.any?(char)
    else
      position += "#{table[char.to_sym]}" if LETTERS.any?(char)
    end
  end
  return position
end
