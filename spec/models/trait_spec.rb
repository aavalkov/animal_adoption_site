require 'spec_helper'

describe Trait do
	it { should validate_presence_of :name}	
end