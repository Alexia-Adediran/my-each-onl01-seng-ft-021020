# def my_each # put argument(s) here
#   # code here
# end 
# def my_each(array) # put argument(s) here
#   # code here
# end 
#   i = 0
#   while i < array.length
#     yield(array[i])
#     i += 1
#   end
#   array
# end
# collection = [1, 2, 3, 4]
# my_each(collection) do |i|
#   puts i
# end
class Array
  def for_each
    counter = 0
    while counter < self.size do
      yield(self[counter]) # pass argument to block and execute 
      counter += 1
    end
    self     # original array is returned 
  end
end
arr = [1, 2, 3, 4]
arr.for_each {|num| p num }