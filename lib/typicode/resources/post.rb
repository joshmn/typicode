module Typicode
  class Post < Resource
    extend Typicode::APIOperations::List
    extend Typicode::APIOperations::Retrieve
    extend Typicode::APIOperations::Update
    extend Typicode::APIOperations::Delete

    transform_keys userId: :user_id

    member_method :comments, verb: :get, options: { object_class: Comment }

    def self.collection_path
      "posts"
    end
  end
end