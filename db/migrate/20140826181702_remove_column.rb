class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :animals, :info, :string
  end
end
