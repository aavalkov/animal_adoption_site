require 'spec_helper'

describe Animal do
	it { should validate_presence_of :name }
	it { should validate_presence_of :species }
	it { should validate_presence_of :age }

	it { should have_and_belong_to_many :traits }
end