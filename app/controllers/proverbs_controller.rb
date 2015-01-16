class ProverbsController < ApplicationController
	def today 
		proverb_ids = 5.times.map{ Random.rand(Proverb.count) } 
		@proverbs = Proverb.find(proverb_ids)
	end
end