#just some tests on enumerable values and 
# iteration while learning ruby

mock={"phone_number"=>"503-451-1234","business_name"=>"Treehouse",
	"location" => "PDX_house"}

mock.each do|key,value|
	puts "The key at #{key} is #{value}"
end

mock.each_key{|key| puts "The key is #{key}"}

mock.each_value{|value| puts "The value is #{value}"}

mock.select{|key,value| key== 'location'}

mock.keep_if{|key,value| key=='location'}

mock.find{|key, value| key=='phone_number'}

mock.find_all{|key, value| value.match('house')}

mock.all?{|key,value| value.match('house')}

mock.any?{|key,value| value.match('house')}

mock.count #number of keys in hash should be 3

mock.map{|key, value| value="(Im a value ) #{value}"}

mock.reject{|key, value| value.match('house')}

