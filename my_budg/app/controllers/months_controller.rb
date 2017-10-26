class MonthsController < ApplicationController


  def new
    @month = Month.new
  end

  def index
    @months = Month.all
  end

  def show
     @date = params[:date] ? Date.parse(params[:date]) : Date.today
   end

  def create
    @month = Month.create(month_params)
    redirect_to month_path
  end



  private

  def month_params
    params.require(:month).permit(:name, :date, :user_id)
  end
end
