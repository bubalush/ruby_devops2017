def build(string, &block)
  a(string,&block)
end

def a(string, &block)
  string = yield string, "a"
  b(string, &block)
end

def b(string, &block)
  string = yield string, "b"
  c(string, &block)
end

def c(string, &block)
  string = yield string, "c"
end