module Parser

  class Base
    TIMEOUT_LIMIT = 1
    attr_accessor :search_key
    def initialize(string, substring)
      @string = string
      @search_key = substring
    end

    def parse
      @result = @string.scan(@search_key).count
      self
    end

    def report
      @result
    end
  end

  class Custom < Base

    def initialize(string)
      @string = string
    end

    def parse(&block)
      begin
        b = []
        @string.each_line { |i| b.push(yield(i)) }
      rescue
        b = []
      end
      @result = b
      self
    end

    def report
      p @result
    end
  end

  class Link < Base

    def initialize(string)
      @string = string
    end

    def parse
      @result = @string.scan(/href='(.*)'/).flatten
      self
    end
  end

end