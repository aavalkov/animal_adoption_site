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
 			redirect_to("/traits")
 		else
 			render('traits/index.html.erb')
 		end
	end
end