def points(games)
  points_array = []
  games.each do |points|
    match = points.split("")
    if match[0].to_i > match[2].to_i
      points_array << 3
    elsif match[0].to_i < match[2].to_i
      points_array << 0
    else
      points_array << 1
    end
  end
  points_array.sum
end
