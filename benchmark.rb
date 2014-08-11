class Speech
	def initialize
		print "what is the speech name? "
		@title = gets.chomp
		@lines = []
		while add_line
			puts "Line added."
		end
	end

	def title 
		@title
	end

	def add_line
		puts "Add a line: (blank line to exit)"
		line. gets.chomp
		if line.length > 0
			@lines.push line
			return line
		else
			return nil
		end
	end

	def each(&block)
		@lines.each {|line| yield line}
	end

end

speech = Speech.new
speech.each do |line|
	puts "[#{speech.title}] #{line}"
end

# benchmarking example

class SimpleBenchmarker
	def self.go(how_many=1, &block)
		puts "---------Benchmarking started ------------"
		start_time = Time.now
		puts "Start Time: \t#{start_time}\n\n"
		how_many.times do |a|
			print "."
			block.call
		end
		print "\n\n"
		end_time = Time.now
		puts "End Time: \t #{end_time}\n"
		puts "--------------- Benchmarking finished -------------- \n\n"
		puts "Result:\t\t#{end_time-start_time} seconds"
	end
end

SimpleBenchmarker.go 5
	time = rand(0.1..1.0)
	sleep time 
end
