class CreateAnimalsTraits < ActiveRecord::Migration
  def change
    create_table :animals_traits do |t|
    	t.belongs_to :animal
    	t.belongs_to :trait
    end
  end
end
