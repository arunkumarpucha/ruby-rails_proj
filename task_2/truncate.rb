module Truncate
	def truncate1(body,length)
		define_method body do
			result_sentence = ""
			if @body && @body.length >= length[:length]
				result_sentence = @body.slice(0,length[:length])+"..."
			elsif @body
				result_sentence = @body
			end 
			result_sentence
		end 
	end 
end
