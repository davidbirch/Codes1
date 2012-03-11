# == Schema Information
#
# Table name: industry_classes
#
#  id          :integer(4)      not null, primary key
#  code        :string(255)
#  description :string(255)
#  group_code  :string(255)
#  group_id    :integer(4)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class IndustryClass < ActiveRecord::Base
  
  belongs_to :group
  has_many :primary_activities
    
end
