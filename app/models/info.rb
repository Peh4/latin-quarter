# == Schema Information
#
# Table name: infos
#
#  id         :integer         not null, primary key
#  nom        :string(255)
#  created_at :datetime
#  updated_at :datetime
#


class Info < ActiveRecord::Base
    attr_accessible :nom

    validates :nom, :presence => true
end


