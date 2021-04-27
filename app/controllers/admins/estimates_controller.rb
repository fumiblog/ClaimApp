class Admins::EstimatesController < ApplicationController

  def new
    @estimate = Estimate.new
    @in_charge = InCharge.find(params[:id])
  end

  def create
    @estimate = Estimate.new(estimate_params)
    # byebug
    @estimate.save!
    redirect_to admins_estimates_path
  end

  def index
    @in_charges = InCharge.all
    if params == nil
      @estimates = Estimate.all
    else
      # byebug
      @estimates = Estimate.where(in_charge_id: params[:in_charge_id])
    end
  end

  private
  def estimate_params
    params.require(:estimate).permit(
      :date,
      :in_charge_id,
      :subject,
      :payment_method,
      :delivery_time,
      :price
    )
  end

end
