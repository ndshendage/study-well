class ArraySort
  input_array = Array.new
  begin 
    p "Enter array element"
    element = (gets().chomp).to_i
    input_array << element
  end while element != 0
  input_array.pop() 
p "array is = #{input_array.inspect} and length = #{input_array.length}"  



p "Going to sort the array by selection method"

 index = 0;
 input_array.each do |element|
  lowest = element;
  lowest_element_index = index;
  length = input_array.length
  i = index + 1
  
  while i < length do
  
    if input_array[i] < lowest
      lowest = input_array[i]
      lowest_element_index = i
    end
    i = i + 1;
  end

  input_array[index] = lowest;
  input_array[lowest_element_index] = element
  p "array for index #{index}= #{input_array}"
  index = index+1;
end







end




