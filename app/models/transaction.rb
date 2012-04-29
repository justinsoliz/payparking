class Transaction < ActiveRecord::Base
  validates :minutes, :presence => true

end
