require_relative 'message'

print "Given message body: "
body = gets

message = Message.new(body)
truncate_msg = Message.truncate(message.body,length: 120)
puts '-' * 80
puts "Processed message: #{truncate_msg}"
