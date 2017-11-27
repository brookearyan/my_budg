class ExpensesController < ApplicationController

  def new
    @expense = Expense.new
  end

  def index
    @expenses = Expense.all
  end

  def show
     @expense = Expense.find(params[:id])
     respond_to do |format|
       format.html { render :show }
       format.json { render json: @expense}
     end
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
