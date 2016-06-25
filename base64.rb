require "base64"

enc   = Base64.encode64('Rodolfo Bandeira')
puts enc

plain = Base64.decode64('Um9kb2xmbyBCYW5kZWlyYQ==')
puts plain

