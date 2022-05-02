module Truncate
	def truncate(body,length)
	    result_sentence = ""
	    if body && body.length >= length[:length]
			result_sentence = body.slice(0,length[:length])+"..."
		elsif body
			result_sentence = body
		end 
		result_sentence
	end 

	def check_for_length_limit(result_sentence,word)
		result_sentence.length+word.length < 120
	end
end
