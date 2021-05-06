module Typicode
  module APIOperations
    module Delete
      def delete(id)
        response = execute_api_request(:delete, "/#{collection_path}/#{id}")
        handle_response(response)
      end
    end
  end
end