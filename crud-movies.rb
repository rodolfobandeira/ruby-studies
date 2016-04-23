movies = {
    'matrix'  => 8,
    'titanic' => 3
}

puts "What do you wanna do?"
choice = gets.chomp # chomp removes new line from the end

case choice
when "add"
    puts "Which movie do you want to add?"
    title = gets.chomp
    
    puts "What's your rate for the movie: #{title} ?"
    rating = gets.chomp
    
    title = title.to_sym # Converts to symbol
    # We could also use .intern that is the same of .to_sym
    
    if movies[title] == nil
        rating = rating.to_i  # Converts to integer
        movies[title] = rating
    end

when "update"
    puts "Which movie do you want to update?"
    title = gets.chomp
    title = title.to_sym # Converts to symbol
    # We could also use .intern that is the same of .to_sym
    
    if movies[title] == nil
        puts "Error! This movie does not exist on the hash"
    else 
        puts "What's your rate for the movie: #{title} ?"
        rating = gets.chomp
        rating = rating.to_i  # Converts to integer
        movies[title] = rating
    end
when "display"
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end
when "delete" 
puts "Which movie do you want to delete?"
    title = gets.chomp
    title = title.to_sym # Converts to symbol
    # We could also use .intern that is the same of .to_sym
    
    if movies[title] == nil
        puts "Error! This movie does not exist on the hash"
    else 
        movies[title].delete
    end
else
    puts "Error!"
end
