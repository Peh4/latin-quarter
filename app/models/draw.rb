
# == Schema Information
#
# Table name: draws
#
#  id         :integer         not null, primary key
#  data       :text(255)
#  created_at :datetime
#  updated_at :datetime
#  info_id    :integer
#



class Draw < ActiveRecord::Base
  attr_accessible :data, :info_id
  
  validates :data, :presence => true
  
end

