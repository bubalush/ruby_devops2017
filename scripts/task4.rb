module Mtn

  class Healthcheck

    def initialize(server)
      @right = 0
      @all = 0
      @server = server
    end

    def check!
      status = @server.status
      if status.equal?(true)
        @right += 1
        @all += 1
        'OK '+"(#{@right}/#{@all})"
      else
        'FAIL'
      end
    rescue Mtn::Status400, Mtn::Status500, Mtn::TimeoutError => exc
      mes= exc.to_s.upcase
      @all += 1
      "#{mes} " + "(#{@right}/#{@all})"
    rescue
      'FAIL'
    end
  end
end