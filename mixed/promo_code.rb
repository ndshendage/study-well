promo_code = []
root = 65;
for i in 1..3 
pw = (root + rand(26).to_i).chr
promo_code << pw
end
#p "promocode array = #{promo_code}"
promo_code = promo_code.flatten.join''
p "#{promo_code}"


begin
first= rand(1000).to_i * rand(1000).to_i * rand(1000).to_i
#p "#{first}"
end while first < 1000
first = first.to_s
index = first.length
int_part = []
for i in 1..4
  int_part << first[rand(index)]
  end
  int_part = int_part.flatten.join''
p "int part = #{int_part}" 
promo_code = promo_code+int_part
p "#{promo_code}"


