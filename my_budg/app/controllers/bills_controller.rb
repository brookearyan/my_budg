class BillsController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  
  def new
    @bill = Bill.new
  end

  def index
    @bills = Bill.all
  end

  def show
    @bill = Bill.find(params[:id])
  end

  def create
    @bill = Bill.create(bill_params)
    redirect_to bill_path
  end

  def edit
    @bill = Bill.find(params[:id])
  end

  def update
    @bill = Bill.find(params[:id])
    if @bill.update_attributes(bill_params)
      flash[:success] = "bills updated"
      redirect_to @bill
    else
      render 'edit'
    end
  end

  private

  def bill_params
    params.require(:bill).permit(:company, :type, :cost, :due_date, :user_id)
  end
end
