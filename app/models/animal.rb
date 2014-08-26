class Animal < ActiveRecord::Base
	validates :name, :presence => true
	validates :species, :presence => true
	validates :age, :presence => true

	has_and_belongs_to_many :traits
end