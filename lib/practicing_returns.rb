require 'pry'

def hello(array)
  i = 0
  new_array = []
  while i < array.length
    #binding.pry
    new_array << yield(array[i])
    i += 1
  end
  new_array
end

#binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
