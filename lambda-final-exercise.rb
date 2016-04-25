crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!

first_half = lambda do |key, value|
    if value < 'M'
        value
    end
end

a_to_m = crew.select(&first_half)

puts a_to_m
