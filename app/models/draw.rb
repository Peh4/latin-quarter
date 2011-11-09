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

class Draw < ActiveRecord::Base
  attr_accessible :author, :data, :parisien
  
  validates :author, :length   => { :maximum => 50 }

  validates :data, :presence => true
  
end
