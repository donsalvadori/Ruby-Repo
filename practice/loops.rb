i=0
string = 'hello world'

while i<=10
	string = 'hello world #{i}'
	puts "i is now #{i}"
	i+=1
end

puts "The final value of i is #{i}"


until i > 10 do 
	puts "i is now #{i}"
	i+=1
end

puts "The final value of i is #{i}"

name =''

until name == 'Chris' do 
	print "What is your name? "
	name = get.chomp
	puts "Hellow, #{name}"
end

array = [1,2,3,4,5,6]

for i in array do
	puts "i is #{i}"
end

for i in 1..10 do
	puts "i is #{i}"
end


for i in 1..5 do
	for j in 1..5 do
		puts "i is #{i} and j is #{j}"
	end
end


for animal in %w(dog cat horse goat snake) do
	puts "The current animal is #{animal}"
end


for animal in %w(dog cat horse goat snake frog) do
	next if == 'cat'
	puts "The current animal is #{animal}"
end

for animal in %w(dog cat horse goat snake frog) do
	break if == 'cat'
	puts "The current animal is #{animal}"
end

loop do
	print "enter your name: "
	name = get.chomp
	if name= "Chris"
		puts "Hi #{name}, we've been expecting you."
		break
	end
end


animals = %w(dog cat horse goat snake frog)
count = 0

for animal in animals
	puts "The current animal is #{animal}"
	break if count == 10
	count +=1
	retry if animal == 'horse'
end


for animal in animals
	puts "The current animal is #{animal}"
	break if count == 10
	count +=1
	redo if animal == 'horse'
end
