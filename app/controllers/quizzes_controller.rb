class QuizzesController < ApplicationController
	def index
    @recipe = Recipe.order("RANDOM()").first
	end
end
