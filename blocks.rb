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

