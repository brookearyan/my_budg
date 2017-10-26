class IncomesController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]

  def new
    @income = Income.new
  end

  def index
    @incomes = Income.all
  end

  def show
    @income = Income.find(params[:id])
  end

  def create
    @income = Income.create(income_params)
    redirect_to income_path
  end

  def edit
    @income = Income.find(params[:id])
  end

  def update
    @income = Income.find(params[:id])
    if @income.update_attributes(income_params)
      flash[:success] = "incomes updated"
      redirect_to @income
    else
      render 'edit'
    end
  end

  private

  def income_params
    params.require(:income).permit(:user_id, :amount)
  end
end
