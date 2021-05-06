$LOAD_PATH.unshift File.dirname(__FILE__) + '/lib'

require_relative './lib/typicode.rb'

Typicode.config.endpoint = "https://jsonplaceholder.typicode.com"

puts Typicode::Post.comments(1).first.inspect

puts Typicode::Post.list.size
puts Typicode::Post.retrieve(1).inspect
puts Typicode::Post.update(1, { user_id: 123123}).user_id
puts Typicode::Post.delete(1)
