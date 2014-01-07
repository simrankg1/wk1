puts "Enter a string"
string= gets.chomp

i= string.length

until i < 0
	temp= string[i]
	
	print temp
	i -= 1
end


