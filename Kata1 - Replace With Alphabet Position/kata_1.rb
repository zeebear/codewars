LETTERS = ('a'..'z').to_a
NUMBERS = (1..26).to_a
@table = {}
LETTERS.each_with_index do |letter, index|
  @table[letter.to_sym] = NUMBERS[index]
end

def alphabet_position(text)
  position = text.downcase.split('').keep_if { |char| LETTERS.any?(char) }
  position.map! do |char|
    @table[char.to_sym].to_s
  end
  position.join(' ')
end
