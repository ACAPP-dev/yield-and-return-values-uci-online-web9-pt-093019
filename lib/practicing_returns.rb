require 'pry'

def hello(array)
  i = 0
  while i < array.length
    new_array << yield(array[i])
    i += 1
  end
  p new_array
end

binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
