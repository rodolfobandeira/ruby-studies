require 'csv'

puts "creates exported.csv"


CSV.open('./exported.csv', 'wb', options={
  :col_sep => '|',
  :quote_char => "\x00" # quick hack to avoid quote chars
}) do |csv|
  csv << ["row", "of", "CSV", "data"]
  csv << ["another", "row"]
  # ...
end

puts "done"

=begin
output is:
└─ $ ▶ cat exported.csv

row|of|CSV|data
another|row

=end

