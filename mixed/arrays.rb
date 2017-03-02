

array = [11,12,13]
puts("Enter the no : ")
no = gets().to_i

p "you have entered the no = #{no}"

index = array.index(no)
p "index = #{index}"
#p "so next no is = #{array[index+1]}"

array.each_with_index do |index, val |
 p "value = #{val} and index = #{index}"
end



4622442304306438
Navnath Shendage
Central Bank of India
 #Navnath Shendage: 381130367
#[4:27:47 PM] Navnath Shendage: 44HFD7CF

