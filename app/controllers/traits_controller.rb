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
		render('traits/show.html.erb')
	end

	def edit
		@trait = Trait.find(params[:id])
		render('traits/edit.html.erb')
	end

	def update
		@trait = Trait.find(params[:id])
		if @trait.update(params[:trait])
			flash[:notice] = "Trait was successfully updated."
 			redirect_to("/traits/#{@trait.id}")
 		else
 			render('traits/edit.html.erb')
 		end
	end

	def destroy
		@trait = Trait.find(params[:id])
		@trait.destroy
		flash[:notice] = "Trait was successfully deleted."
		redirect_to("/traits/")
	end
end