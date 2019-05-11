def dirReduc(arr)
  @arr = arr
  dir_index = 0
  arr_length = arr.length
  each_pass(@arr) unless arr_length == arr.length
  return arr

  def each_pass(arr)
    @arr = arr
    dir_index = 0

    def north
      puts "north"
      delete_pair if @arr[dir_left_index] == "SOUTH"
    end

    def south
      puts "south"
      delete_pair if @arr[dir_left_index] == "NORTH"
    end

    def east
      puts "east"
      delete_pair if @arr[dir_left_index] == "WEST"
    end

    def west
      puts "west"
      delete_pair if @arr[dir_left_index] == "EAST"
    end

    def delete_pair
      puts "tried to delete pair"
      @arr.delete_at(dir_index)
      @arr.delete_at(dir_left_index)
    end

    arr.each do |dir|
      unless dir_index.zero?

        dir_left_index = dir_index - 1

        case dir
        when "NORTH"
          north
        when "SOUTH"
          south
        when "EAST"
          east
        else
          west
        end
      end
      dir_index += 1
    end
  end


end

array = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
dirReduc(array)

array2 = %w[north south south east west north west]

def compare(arr)
  arr_index = 0
  arr.each do |dir|
    puts "#{arr_index} is the index number, "
    puts "#{dir} is the direction"

    unless arr_index.zero?
      arr_left = arr_index - 1
      puts "  #{arr_left} is the index to the left"
      left_dir = arr[arr_left]
      puts "  #{left_dir} is the direction to the left"
    end
    arr_index += 1
  end
end
