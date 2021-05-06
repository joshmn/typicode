require 'typicode/transform_keys'

module Typicode
  class Resource
    extend Typicode::TransformKeys

    def initialize(values)
      values.each do |k,v|
        sym = k.to_sym
        if self.class.transformed_keys.key?(sym)
          name = self.class.transformed_keys[sym]
        else
          name = sym
        end
        self.class.attr_reader name
        instance_variable_set(:"@#{name}", v)
      end
    end

    def self.member_method(name, verb:, path: nil, options: {})
      path ||= name.to_s

      define_singleton_method(name) do |id, **args|
        response = execute_api_request(verb.to_sym, "/#{collection_path}/#{id}/#{path}", **args)
        handle_response(response, options)
      end
    end

    def self.execute_api_request(verb, path, **args)
      Typicode::Client.execute_api_request(verb, path, **args)
    end

    def self.handle_response(response, options = {})
      object_class = options.fetch(:object_class, self)

      if response.code.between?(200, 399)
        if response.parsed_response.is_a?(Hash)
          object_class.new(response.parsed_response)
        elsif response.parsed_response.is_a?(Array)
          response.parsed_response.map { |object| object_class.new(object) }
        else
          raise ArgumentError, "unknown handling of response with type #{response.parsed_response.class}"
        end
      else
        begin
          Typicode::ErrorObject.new(response)
        rescue StandardError => e
          Typicode::ReallyBadError.new(e, response)
        end
      end
    end

  end
end