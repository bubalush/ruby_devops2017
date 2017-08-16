def mega_sum(a,b=0)
  c=a.map! { |i| yield i } if block_given?
  c=a.sum+b
  p c
end