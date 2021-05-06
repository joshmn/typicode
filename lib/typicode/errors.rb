module Typicode
  class ErrorObject
    attr_reader :code, :message
    def initialize(response)
      @code = response.code
      @message = response.parsed_response['message']
    end
  end

  class ReallyBadError
    attr_reader :exception, :response
    def initialize(exception, response)
      @exception = exception
      @response = response
    end
  end
end