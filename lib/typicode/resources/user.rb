module Typicode
  class User < Resource
    extend Typicode::APIOperations::List
    extend Typicode::APIOperations::Retrieve
    extend Typicode::APIOperations::Update
    extend Typicode::APIOperations::Delete

    def self.collection_path
      "users"
    end
  end
end