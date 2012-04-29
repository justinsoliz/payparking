# == Schema Information
#
# Table name: vehicles
#
#  id         :integer         not null, primary key
#  year       :string(255)
#  make       :string(255)
#  model      :string(255)
#  license    :string(255)
#  color      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Vehicle < ActiveRecord::Base
end
