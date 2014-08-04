require 'spec_helper'

describe "Organization" do

  after :each do
    Organization.delete_all
  end

  it 'should have a name' do
    Organization.create(name: 'NGO1')

    ngo1 = Organization.find_by_name('NGO1')
    ngo1.should be_a_kind_of Organization
  end
end