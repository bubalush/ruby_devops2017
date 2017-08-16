def range_finder(range)
  c= range.to_a.find_all { |i| i if (i.remainder 7).equal? 3 }
  p c.max
end