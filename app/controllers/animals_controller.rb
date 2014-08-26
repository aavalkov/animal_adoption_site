class AnimalsController < ApplicationController
	def index
 		@animals = Animal.all
 		render('animals/index.html.erb')
 	end

 	def show
 		@animal = Animal.find(params[:id])
 		render('animals/show.html.erb')
 	end

 	def new
 		@animal = Animal.new(params[:animal])
 		render ('animals/new.html.erb')
 	end
end