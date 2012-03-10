# == Schema Information
#
# Table name: industry_codes
#
#  id                      :integer(4)      not null, primary key
#  division_code           :string(255)
#  division_description    :string(255)
#  subdivision_code        :string(255)
#  subdivision_description :string(255)
#  group_code              :string(255)
#  group_description       :string(255)
#  class_code              :string(255)
#  class_description       :string(255)
#  primary_activity        :string(255)
#  created_at              :datetime        not null
#  updated_at              :datetime        not null
#

class IndustryCode < ActiveRecord::Base
end
