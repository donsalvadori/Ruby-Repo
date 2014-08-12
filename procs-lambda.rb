#creating procs & lambda practice test

my_proc= Proc.new{}

my_proc.call

my_proc = proc {}

my_proc = pro {puts "Hello World"}

my_proc.call

#lambda

my_lambda = lambda{ }

my_lambda = -> {}

#ammend real code here

my_proc = proc { |name| puts "Hello, #{name}"}

my_proc.call "Chris"


my_lambda = lambda {|name| puts "Hello, #{name}"}

my_lambda.call "chris"

#so lambdas require an argument where procs dont

def return_from_proc
variable= proc { return "returning from proc inside method"}
variable.call
return "returning from proc as last line from method"
end

def return_from_lambda
variable= lambda { return "returning from lambda inside method"}
variable.call
return "returning from lambda as last line from method"
end

puts return_from_proc

puts return_from_lambda
