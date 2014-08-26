class Animal < ActiveRecord::Base
	validates :name, :presence => true
	validates :type, :presence => true
	validates :age, :presence => true
end