ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new do |age|
    if age < 100
        age
    end
end

youngsters = ages.select(&under_100)

puts youngsters
