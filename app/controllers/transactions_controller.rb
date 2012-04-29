class TransactionsController < ApplicationController

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(params[:transaction])
    @transaction.save
    flash[:notice] = "Parking reserved for #{@transaction.minutes} minutes"
    redirect_to @transaction
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

end
