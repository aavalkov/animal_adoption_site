require 'spec_helper'

describe Animal do
	it { should validate_presence_of :name }
	it { should validate_presence_of :species }
	it { should validate_presence_of :age }
	it { should validate_presence_of :info }
end