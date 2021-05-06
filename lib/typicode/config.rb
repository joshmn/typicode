module Typicode
  class Config
    # the secret api key that you better not check into your repo!
    attr_accessor :api_key

    # the base URL we're consuming
    attr_accessor :endpoint
  end
end