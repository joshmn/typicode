module Typicode
  module APIOperations
    module Update
      def update(id, params)
        response = execute_api_request(:patch, "/#{collection_path}/#{id}", json: Utils.normalize_attributes(params, self))
        handle_response(response)
      end
    end
  end
end