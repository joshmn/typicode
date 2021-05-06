require "typicode/version"

require 'http'
require 'http_ext'

require 'typicode/utils'
require 'typicode/client'

require 'typicode/config'
require 'typicode/errors'
require 'typicode/api_operations'
require 'typicode/resources'

module Typicode
  class Error < StandardError; end

  def self.config
    @config ||= Config.new
  end
end
