module Typicode
  class Client
    def self.execute_api_request(verb, path, **args)
      HTTP.send(verb, "#{Typicode.config.endpoint}#{path}", **args)
    end
  end
end