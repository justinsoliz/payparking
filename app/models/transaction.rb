# == Schema Information
#
# Table name: transactions
#
#  id         :integer         not null, primary key
#  minutes    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Transaction < ActiveRecord::Base
  validates :minutes, :presence => true

end
