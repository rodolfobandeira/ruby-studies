require 'crack' # To parse the json
require "active_support" # to_xml
require "active_support/core_ext" # to_xml
require 'byebug'

json2array = Crack::JSON.parse('{"icon_url":"https:\/\/assets.chucknorris.host\/img\/avatar\/chuck-norris.png","id":"zYfGBDlJQayOwrrC2q6_1g","url":"http:\/\/api.chucknorris.io\/jokes\/zYfGBDlJQayOwrrC2q6_1g","value":"If you ever use the expression \u0027it happens to the best of us\u0027 around Chuck Norris, get ready for something violent to happen to you."}')

xml = json2array.to_xml

puts xml

=begin
(byebug) json2array["icon_url"]
"https://assets.chucknorris.host/img/avatar/chuck-norris.png"

(byebug) json2array["value"]
"If you ever use the expression 'it happens to the best of us' around Chuck Norris, get ready for something violent to happen to you."
(byebug)


(byebug) c
<?xml version="1.0" encoding="UTF-8"?>
<hash>
  <icon-url>https://assets.chucknorris.host/img/avatar/chuck-norris.png</icon-url>
  <id>zYfGBDlJQayOwrrC2q6_1g</id>
  <url>http://api.chucknorris.io/jokes/zYfGBDlJQayOwrrC2q6_1g</url>
  <value>If you ever use the expression 'it happens to the best of us' around Chuck Norris, get ready for something violent to happen to you.</value>
</hash>


=end



