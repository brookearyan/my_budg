class MonthsController < ApplicationController
  # before_action :logged_in_user, only: [:index, :edit, :update]
  # before_action :correct_user,   only: [:edit, :update]

  def new
    @month = Month.new
  end

  def index
    @months = Month.all
  end

  def show
    @month = Month.find(params[:id])
  end

  def create
    @month = Month.create(month_params)
    redirect_to month_path
  end

  def edit
    @month = Month.find(params[:id])
  end

  def update
    @month = Month.find(params[:id])
    if @month.update_attributes(month_params)
      flash[:success] = "months updated"
      redirect_to @month
    else
      render 'edit'
    end
  end

  private

  def month_params
    params.require(:month).permit(:name, :user_id)
  end
end
