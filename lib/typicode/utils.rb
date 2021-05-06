module Typicode
  class Utils
    class << self
      def normalize_attributes(attributes, klass)
        return attributes if klass.transformed_keys.empty?

        inverted_transformed_keys = klass.transformed_keys.invert
        new_attributes = {}
        attributes.each do |k,v|
          sym = k.to_sym
          if inverted_transformed_keys.key?(sym)
            new_attributes[inverted_transformed_keys[sym]] = attributes[k]
          else
            new_attributes[sym] = attributes[k]
          end
        end

        new_attributes
      end
    end
  end
end