class ArraySort

  array = Array.new
	begin
	 print "Enter the array Element (integer) to stop array use 0"
	 input = gets().to_i
	 array << input
	end while input != 0 ;
  array.pop();
  p "array = #{array} and length = #{array.length}"

  size = array.length
  sorted_array = Array.new
  sr = 0
  array.each do | element|
  	sr = sr + 1
    length = sorted_array.length
    p "*** #{sr}   ** for element = #{element} and sorted_array = #{sorted_array}"
    if length == 0
      sorted_array << element
      #p "first element = sortedarray = #{sorted_array}"
    else
      index = 0;
      if element > sorted_array[length - 1]
      	#p "sorted_array = #{sorted_array}"
        sorted_array << element
        #p "after adding #{element}sorted_array = #{sorted_array}"
        #p "#{element} is greater than #{sorted_array[length-1]}"
      else
        while index < length-1 && element > sorted_array[index]
        	#p "#{element} and #{sorted_array[index]}"
          index = index + 1 
        end
        sort_length = sorted_array.length
        while index < sort_length
        	sorted_array[sort_length] = sorted_array[sort_length-1]
        	sort_length = sort_length-1
        end	
        #p "want to put on the #{element} and sorted = #{sorted_array} and index = #{index}"
        sorted_array[index] = element  
        p "** final for #{sr} sorted array = #{sorted_array}" 
      end
    end         
  end
  #selection sorting

    #   (0...size).each do |outer|
    #     min_element_index = outer
	   #    (outer+1...size).each do |inner|
	   #      min_element_index = inner if array[inner] < array[min_element_index]
	   #    end

    #     #array[outer], array[min_element_index] = array[min_element_index], array[outer]
    #     temp = array[outer]
    #     array[outer] = array[min_element_index]
    #     array[min_element_index] = temp
    #     p "outer = #{outer} and array = #{array}"
    #    end
    #    p "a = 5 b = 10 ... wann 10 and 20"
    #    a,b,c = 100, 200, 100
    #    p "a = #{a} b = #{b}"
    # p "sorted array= #{array}'"

end
