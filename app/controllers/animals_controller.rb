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

 	def create
 		@animal = Animal.new(params[:animal])
 		if @animal.save
 			flash[:notice] = "The Animal was successfully added."
 			redirect_to("/animals/#{@animal.id}")
 		else
 			render('animals/new.html.erb')
 		end
 	end

 	def edit
 		@animal = Animal.find(params[:id])
 		render('animals/edit.html.erb')
 	end
end