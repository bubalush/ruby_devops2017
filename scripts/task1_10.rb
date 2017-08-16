def fib(n)
  c = []
  if n == 0
    return c
  elsif n == 1
    c << 0
    return c
  end
  a = 0; b = 1
  c << a
  c << b
  result = 0
  while result < n-2
    c << a + b
    a = b
    b = c[-1]
    result += 1
  end
  c
end