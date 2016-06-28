require 'prawn'

Prawn::Document.generate('pdf_example.pdf') do
  text 'This is Prawn gem'
  text 'Test by @rodolfobandeira'
end

