class MonthsController < ApplicationController

  def new
    @month = Month.new
  end

  def index
    @months = Month.all
  end

  def show
     @user = User.find(params[:id])
     respond_to do |format|
       format.html { render :show }
       format.json { render json: @user}
     end
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
