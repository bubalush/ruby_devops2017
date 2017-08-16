def  ip_scapper (a,b)
  t=[]
  c = b.each { |i| t.push(i) if a.include? i }
  p t
end