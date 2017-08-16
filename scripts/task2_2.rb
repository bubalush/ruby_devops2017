class Array
  def even_search
    delete_if { |i| i.odd? }
    select { |i| yield i } if block_given?
  end
end