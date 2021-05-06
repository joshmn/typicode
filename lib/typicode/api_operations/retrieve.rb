module Typicode
  module APIOperations
    module Retrieve
      def retrieve(id)
        response = execute_api_request(:get, "/#{collection_path}/#{id}")
        handle_response(response)
      end
    end
  end
end