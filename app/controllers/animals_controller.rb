class AnimalsController < ApplicationController
	def index
 		@animals = Animal.all
 		render('animals/index.html.erb')
 	end

 	def show
 		@animal = Animal.find(params[:id])
 		render('animals/show.html.erb')
 	end
end