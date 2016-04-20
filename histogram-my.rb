puts "Tell me a story please"
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0) # default value will be '0'

words.each do |word|
    frequencies[word] += 1
end

# Sorting by frequency ASC
frequencies = frequencies.sort_by do |word, frequency|
    frequency
end

# Sorting by frequency DESC
frequencies.reverse! # Using '!' it will "save" the reverse on frequencies

frequencies.each do |key, value|
   puts "#{key} #{value}" 
end