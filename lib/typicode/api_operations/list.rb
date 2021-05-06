module Typicode
  module APIOperations
    module List
      def list(params = {})
        response = execute_api_request(:get, "/#{collection_path}", params: query)
        handle_response(response)
      end
    end
  end
end