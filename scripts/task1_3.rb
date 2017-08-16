def test (value)
  if value < 0
    b=(value.to_s.reverse!.to_i)*(-1)
  else
    b=value.to_s.reverse!.to_i
  end
  b
end