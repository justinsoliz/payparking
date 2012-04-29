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

require 'spec_helper'

describe Vehicle do
  pending "add some examples to (or delete) #{__FILE__}"
end
