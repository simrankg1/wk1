puts "Enter a string"
enter= gets.chomp

longest= enter.split.max.length

puts '*'*longest
enter.split.each do |x|
	puts "*  #{x.center(20, 'x')} *"
end

puts '*'*longest








