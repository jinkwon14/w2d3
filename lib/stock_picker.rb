def stock_picker(array)
  result = []
  array.minmax.each {|e| result << array.index(e)}
  result
end
