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

  def minutes_remaining
    expiration_time = created_at.advance(:minutes => minutes)

    if Time.now.utc < expiration_time
      "#{((expiration_time - Time.now.utc) / 60).floor} minutes remaining"
    else
      "Hey dude you're going to get a ticket"
    end
  end

end
