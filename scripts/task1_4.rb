def test(value)
  b=value.magnitude.to_s.split('').map { |i| i.to_i}
  value=b.sum
  p value
end