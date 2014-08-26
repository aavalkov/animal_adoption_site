class AnimalsController < ApplicationController
	def index
 		@animals = Animal.all
 		render('animals/index.html.erb')
 	end
end