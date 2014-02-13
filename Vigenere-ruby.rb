begin
	puts "Do you want to 'E'ncode or 'D'code?"
	STDOUT.flush
	ans = gets.chomp.downcase.gsub(/[^a-z ]/, "").gsub(/\s+/, "")
	if ans == "e"
		puts "What do you want encoded?"
		STDOUT.flush
		encode = gets.chomp.downcase.gsub(/[^a-z ]/, "").gsub(/\s+/, "")
		puts "What is the key?"
		STDOUT.flush
		key = gets.chomp.downcase.gsub(/[^a-z ]/, "").gsub(/\s+/, "")
		encoded = ""
		if key.to_s.strip.length != 0 and encode.to_s.strip.length != 0
			for n in 0...encode.length
				encoded = encoded + ((encode[n].ord - 97 + (key[n % key.length].ord - 96)) % 26 + 97).chr
			end
		end
		puts "Encoded: " + encoded
	elsif ans == "d"
		puts "What do you want decoded?"
		STDOUT.flush
		decode = gets.chomp.downcase.gsub(/[^a-z ]/, "").gsub(/\s+/, "")
		puts "What is the key?"
		STDOUT.flush
		key = gets.chomp.downcase.gsub(/[^a-z ]/, "").gsub(/\s+/, "")
		decoded = ""
		if key.to_s.strip.length != 0 and decode.to_s.strip.length != 0
			for n in 0...(decode.length)
				decoded = decoded + ((decode[n].ord - 97 - (key[n % key.length].ord - 96)) % 26 + 97).chr
			end
		end
		puts "Decoded: " + decoded
	end
	puts "Run again? y/n?"
	STDOUT.flush
	ans = gets.chomp.downcase.gsub(/[^a-z ]/, "").gsub(/\s+/, "")
end while ans == "y"
