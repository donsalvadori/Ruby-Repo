require 'uri'

require 'open-uri'

url = URI.parse('http://teamtreehouse.com')

puts url.inspect 

url.hostname

puts url.path 

puts URI.split('http://teamtreehouse.com').inspect 

