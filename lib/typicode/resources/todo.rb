module Typicode
  class Todo < Resource
    extend Typicode::APIOperations::List
    extend Typicode::APIOperations::Retrieve
    extend Typicode::APIOperations::Update
    extend Typicode::APIOperations::Delete

    def self.collection_path
      "todos"
    end
  end
end