class EditAnimals < ActiveRecord::Migration
  def change
  	add_column :animals, :species, :string
  	remove_column :animals, :type, :string
  	add_column :animals, :info, :string 
  end
end
