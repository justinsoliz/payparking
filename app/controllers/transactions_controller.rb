class TransactionsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @transactions = Transaction.where(:user_id => current_user.id)
  end

  def new
    @transaction = Transaction.new
  end

  def create
    # @transaction = Transaction.new(params[:transaction])
    
    @transaction = current_user.transactions.build(params[:transaction])

    if @transaction.save
      flash[:notice] = "Parking reserved for #{@transaction.minutes} minutes"
      redirect_to @transaction
    else
      flash[:alert] = "Oops, there was an error."
      render :action => 'new'
    end
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

end
