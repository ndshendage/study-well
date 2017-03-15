Learning the array class of a ruby .... 

creating the array with default values = 
names = Array.new(5, "bharat")






inbuilt_methods:-

names = ["navnath", "Dnyanadeo", "mohan"]

names.at(index) => values at that index
names.fetch(index) => values at that index
names.fetch(index, "not found") => values at that index else not found
names.take(n) => selects first n .... like limit ... n is length
names.drop(n) => reject first n ... offset

wont modify the original ..

length, size,count => no of elements
names.empty? => true//false
names.include?("element"); => checks presence of element



Array oiperations :- 
a = [1,2,3,4,5]
a.push(17)// a << 17 => adds at last
a.unshift(17) => ... first element of insertion 
a.insert(index,  element) => inserts at that index its index and then shifts the array and  changes original
 array => element of any type ... array hash any thing
 
 
 default n will be 1
 a.pop(n) => takes out changes original 
 a.delete_at(index)
 a.shift(n); =>  first n element will be removed ... if no arguments then first only
 a.delete(number)=> deletes number if presents
 a.compact => removes the nil
 a.uniq => all unique elements
 a.reverse_each {|b| process it on reverse sequential array element}
 
 
 
 
 array methods =>
 
 n.map{|element| processing}  ... map is used to create new map on conditions ... if accepted can modify original using !
  ####b.map{|ele| ele * 3}
 => [3, 6, 9, 12, 15]
 
 creates new array as we need 
 select, reject, drop_while => creating the new elements 
 
 keep_if and delete_if 
 
 
 
#Array set operations  =>

m = [1,2,3,4,5]
n = [4,5,6,7,8]

m & n => [4,5] and operations on array
m + n => m union n => [1,2,3,4,5,6,7,8]  -- concatination
m - n => difference between the 2 arrays
a.find_index(value) => will get result  .. returns nil if its not there

m * integer => every element will be duplicated for integer times
m * ""  => entire array will be string

if you find out does the element contains in the array ??

[1,2,3,4,5,6,8].any? {|element| [8,9,10,11].include?element}   #enumerator of an array
=> This  working as normal each element taken out and check with given range ... #boolean result is returned



array comparisons => 
m <=> n  returns .... -1, 0, 1 .. returns nil if no comparisonable ... comparison is with respect to first array

a == b   boolean
a.clear





array methods 

a[index] => value at index
a[index, length] => gets legth elements from index
a[range] => range is used as index ... range .. includes upper and for ... excludes upper
a.slice(index)
a.slice(index,length)
a.count => no of elements in array
a.count{|a| a<3} -> no of element less than 3
a.count(element) => counts the occurence of element in the array a
a.index(element)
a.find_index(element)
a.include?(element)
a.replace => replaces the elements of array a with another array passed as argument and this is done as index wise =>


a.each_index
a.each_with_index |index, value|
for last index
a.rindex => last element index
a.values_at => then this is going to give array of values at that indexes

rotate => default 1
a.rotate(n) => get first n element and puts them at the end of array elemnts
a.rotate(-n) => p = length -n ... puts p elements out and then works ... new array creatd
a.sample(n) => random n elements from array 
a.shuffle => changes the order of elements

a.each_with_index do |value, index|


Array_Sort:-


a.cycle{|x| puts x} => print x infinite
a.cycle(3){|x| puts x} => entire sequence 3 times

a.combination(n).to_i => finds the combination 

a.flatten() => entire array default
a.flatten(1) => only 1 level





fill methods ->



a.fill("value")  => every original element will replace by "value"
a.fill("value", index, length); = > continue


copy_paste
new(size=0, obj=nil)
new(array)
new(size) {|index| block }
























