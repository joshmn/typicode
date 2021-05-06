module Typicode
  module TransformKeys
    def transformed_keys
      @transformed_keys ||= {}
    end

    def transform_keys(hash)
      @transformed_keys = hash
    end
  end
end