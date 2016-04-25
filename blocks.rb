odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints  = odds_n_ends.select { |element| element.is_a? Integer }

# Selects only integers from the array
