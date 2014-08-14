#ruby standard library

array = %w(dog cat frog)

array.to_yaml

puts array.to_yaml

hash ={name: 'Treehouse', location: 'Treehouse Island'}

puts hash.to_yaml

hash[:employees] = ['mike', 'Jason', 'Ryan']

puts hash.to_yaml

#used often in config files

File.open('./config.yml', 'w') do |config|
	config.puts hash.to_yaml
end

config = YAML.load(File.read('.config.yml'))

puts config.inspect

class Frog
	attr_accessor  :name
end

frog = Frog.new

frog.name = 'Mikey'

yaml = frog.to_yaml

puts yaml

same_frog = YAML::load(yaml)

