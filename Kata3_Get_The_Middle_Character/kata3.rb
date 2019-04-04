def get_middle(s)
  half_length = [s.length / 2]
  s.length.odd? ? s.chars[half_length + 1] :  "#{s.chars[half_length]}#{s.chars[half_length + 1]}"
end
