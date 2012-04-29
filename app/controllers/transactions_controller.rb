class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(params[:transaction])
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
