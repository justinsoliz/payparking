class PagesController < ApplicationController 
  before_filter :authenticate_user!, :only => :account

  def account
  end

end
