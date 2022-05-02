# require_relative 'truncate'
require_relative 'truncate'
require 'securerandom'

class Message
  extend Truncate
 
  attr_accessor :id, :body

  truncate1 :body, length: 120  
 
 
  def initialize(body)
    @id = SecureRandom.uuid
    puts "1"
    self.body = body
    puts "3"
  end


end
