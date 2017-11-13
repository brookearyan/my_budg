class ExpensesController < ApplicationController
  # before_action :logged_in_user, only: [:index, :edit, :update]
  # before_action :correct_user,   only: [:edit, :update]

  def new
    @expense = Expense.new
  end

  def index
    @expenses = Expense.all
  end

  def show
  end

  def create
    @expense = Expense.create(expense_params)
    redirect_to current_user
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update
    @expense = Expense.find(params[:id])
    if @expense.update_attributes(expense_params)
      flash[:success] = "expenses updated"
      redirect_to current_user
    else
      render 'edit'
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :expense_type, :cost, :start_time, :user_id)
  end
end
