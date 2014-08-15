require 'fileutils'

here = File.dirname(__FILE__)

puts File.expand_path(here)

puts Dir.entries(here)

FileUtils.mkdir_p(here + '/stuff')

puts FileUtils.cmp(here + '/erb-bank_account.rb')

FileUtils.touch 'file1'

Dir.entries(here)

FileUtils.cp 'file1', 'file2'

puts FileUtils.cmp 'file1', 'file2'
