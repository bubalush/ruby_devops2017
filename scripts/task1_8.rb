def test(array)
  c=array.max
  while array.index(c) do
    array[array.index(c)] = c+100
  end
  array
end