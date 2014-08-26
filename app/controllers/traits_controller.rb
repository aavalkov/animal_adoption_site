class TraitsController < ApplicationController
	def new
		@trait = Trait.new(params[:trait])
		render('traits/new.html.erb')
	end
end