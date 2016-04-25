def double(parameter)
    yield(parameter)
end

double(2) { |result| puts result*2 }
