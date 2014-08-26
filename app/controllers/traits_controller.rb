class TraitsController < ApplicationController
	def new
		@traits = Trait.all
		@trait = Trait.new(params[:trait])
		render('traits/new.html.erb')
	end
end