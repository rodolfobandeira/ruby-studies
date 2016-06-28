require 'byebug'
require 'nokogiri'

doc = Nokogiri::XML(File.open('xml_example.xml')) do |config|
  config.strict.nonet
end

puts doc.xpath("//to").text

=begin
output:
└─ $ ▶ ruby xml_parser_example.rb
Rodolfo
=end

