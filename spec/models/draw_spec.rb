# == Schema Information
#
# Table name: draws
#
#  id         :integer         not null, primary key
#  author     :string(255)
#  data       :string(255)
#  parisien   :boolean
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Draw do
  before(:each) do
      @attr = { :name => "Example User", :email => "user@example.com" }
  end
  
  it "should create an instance with valid attributes" do
    Draw.create(@attr)
  end
  
  it "should require an author" do
      no_author_draw = Draw.new(@attr.merge(:author => ""))
      no_author_draw.should_not be_valid
  end
  
  it "should reject if author_names that are too long" do
     long_name = "a" * 51
     long_author_draw = Draw.new(@attr.merge(:author => long_name))
     long_author_draw.should_not be_valid
   end
  
  it "should require data" do
      no_data_draw = Draw.new(@attr.merge(:data => ""))
      no_data_draw.should_not be_valid
  end
  
end
