class Customers::EstimatesController < ApplicationController

  def new
    @estimate = Estimate.new
    @details = Detail.new
    @Customer_users = CustomerUser.all
  end

  def create
    @estimate = Estimate.find(estimate_params)
    @estimate.save
    redirect_to customers_estimates_path
  end

  def index
    @estimates = Estimate.all
  end

  def edit
    @estimate = Estimate.find(params[:id])
  end

  def update
    @estimate = Estimate.find(params[:id])
    @estimate.update(estimate_params)
    redirect_to customers_estimates_path
  end

  def destroy
    @estimate = Estimate.find(params[:id])
    @estimate.destroy
    redirect_to customers_estimates_path
  end

  private
  def estimate_params
    params.require(:estimate).permit(
      :date,
      :incharge_id,
      :subject,
      :payment_method,
      :delivery_time
    )
  end
end
