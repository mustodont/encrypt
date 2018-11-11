require 'digest'

puts "insert phrase to password"
phrase = STDIN.gets.chomp.to_s

puts "which type of password do you prefer?
1 - MD5
2 - SHA1"
pass_type = STDIN.gets.chomp.to_s
puts "look at this:" 
if pass_type == "MD5"
	
	Digest::MD5.hexdigest 'phrase'
else
	puts Digest::SHA1.hexdigest 'phrase'
end