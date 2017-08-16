def test
  c=[]
  a=(3..10).to_a.reverse
  a.delete(5)
  a.each do |i|
    if i%3 == 0
      c << i ** 2
    else c << i
    end
  end
  c
end