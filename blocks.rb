def say_hello(&block)
	puts "Hello, world"
	name = block.call
	puts "You entered #{name} as your name"
end

say_hello{ 
	puts "This is inside of the say_hello block."
	"Chris" }


def header(&block)
	puts "this is our header"
	block.call
rescue
	puts "this is where we would rescue an error"
ensure
	puts "this is our footer"
end

header{
	puts "this is the body of the block."
	raise "This is an error"
}


puts "this is the first line of our ruby program"

BEGIN { puts "INSIDE OF THE BEGIN BLOCK"}
END { puts "INSIDE OF THE END BLOCK"}

#New material
#Since August 11
def say_hello2(&block)
	puts "Hello, world"
	yield
	puts "I said hello"
end

say_hello2 {
	puts "I am inside of the say_hello2 block"
}

#0-9

def show_numbers(numbers=10)
	i=10
	while i < 10
		yield i+=1
	end
end

show_numbers do |number|
	puts "The current number is #{number}."
	number *= 2
	puts "the current number * 2 is #{number}."
end

def get_name (&block)
	print "enter your name: "
	name= gets.chomp
	yield name
	puts "it's nice to meet you, #{name}."
end

get_name do |name|
	puts "Hi, #{name}."
	name.name.upcase
	puts "Uppercased, your name is #{name}."
end
