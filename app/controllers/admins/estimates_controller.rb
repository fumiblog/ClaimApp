class Admins::EstimatesController < ApplicationController

  def new
    @estimate = Estimate.new
    @in_charge = InCharge.find(params[:id])
  end

  def create
    @estimate = Estimate.new(estimate_params)
    @estimate.save
    redirect_to admins_edit_in_charge_path(@in_charge)
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
