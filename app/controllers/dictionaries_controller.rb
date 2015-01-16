class DictionariesController < ApplicationController 
	def today 
		word_ids = 5.times.map{ Random.rand(Dictionary.count) } 
		@dicts = Dictionary.find(word_ids)
	end

	def greet 
	end
end