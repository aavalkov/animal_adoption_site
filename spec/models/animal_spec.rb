require 'spec_helper'

describe Animal do
	it { should validate_presence_of :name }
	it { should validate_presence_of :type }
	it { should validate_presence_of :age }
end