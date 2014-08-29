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
 		@traits = Trait.all
 		render ('animals/new.html.erb')
 	end

 	def create
 		@animal = Animal.new(params[:animal])
 		if @animal.save
 			flash[:notice] = "The Animal was successfully added."
 			if params[:traits]
 				traits = params[:traits]
 				traits.each do |trait|
 					@animal.traits << Trait.find(trait.to_i)
 				end
 			end
 			redirect_to("/animals/#{@animal.id}")
 		else
 			render('animals/new.html.erb')
 		end
 	end

 	def edit
 		@animal = Animal.find(params[:id])
 		render('animals/edit.html.erb')
 	end

 	def update
 		@traits = Trait.all
 		@animal = Animal.find(params[:id])
 		if @animal.update(params[:animal])
 			flash[:notice] = "The animal was updated."
 			if params[:traits]
 				traits = params[:traits]
 				traits.each do |trait|
 					@animal.traits << Trait.find(trait.to_i)
 				end
 			end
 			redirect_to("/animals/#{@animal.id}")
 		else
 			render('animals/edit.html.erb')
 		end
 	end

 	def destroy
 		@animal = Animal.find(params[:id])
 		@animal.destroy
 		flash[:notcie] = "Animal deleted."
 		redirect_to("/animals")
 	end
end