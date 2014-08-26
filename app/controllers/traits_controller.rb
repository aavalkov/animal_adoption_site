class TraitsController < ApplicationController
	
	def new
		@traits = Trait.all
		@trait = Trait.new(params[:trait])
		render('traits/index.html.erb')
	end

	def create
		@trait = Trait.new(params[:trait])
		if @trait.save
			flash[:notice] = "Trait was successfully saved."
 			redirect_to("/traits/#{@trait.id}")
 		else
 			render('traits/index.html.erb')
 		end
	end

	def show
		@trait = Trait.find(params[:id])
		render ('traits/show.html.erb')
	end
end