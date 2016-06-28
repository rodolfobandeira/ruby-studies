require 'csv'

if File.exists?("./exported.csv")
  x = 1
	CSV.foreach("./exported.csv") do |row|
    puts "Line #{x} #{row.join}"

    CSV.parse(row.join, options={
  		:col_sep => '|',
  		:quote_char => "\x00" # quick hack to avoid quote chars
		}) do |field|
      puts "Line #{x} and field: #{field[0]}"
      puts "Line #{x} and field: #{field[1]}"
      puts "Line #{x} and field: #{field[2]}"
      puts "Line #{x} and field: #{field[3]}"
    end

    puts " "
    x += 1
	end
end

=begin
output:
└─ $ ▶ ruby csv_importer_example.rb
Line 1 row|of|CSV|data
Line 1 and field: row
Line 1 and field: of
Line 1 and field: CSV
Line 1 and field: data

Line 2 another|row
Line 2 and field: another
Line 2 and field: row
Line 2 and field:
Line 2 and field:

