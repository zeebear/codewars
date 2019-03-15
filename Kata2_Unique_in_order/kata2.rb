def unique_in_order(sequence)
  sequence = sequence.split('') if sequence.is_a?(String)
  sequence_unique = []
  sequence.each_with_index do |char, ind|
    sequence_unique << char unless char == sequence[ind - 1] && ind > 0
  end
  sequence_unique
end
