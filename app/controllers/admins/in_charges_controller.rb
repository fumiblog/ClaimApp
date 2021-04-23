class Admins::InChargesController < ApplicationController

  def index
    @in_charges = InCharge.where(:customeruser_id => params[:id])
    @in_charge = InCharge.new
    # byebug
    @customer_user = CustomerUser.find(params[:id])
    # byebug
  end

  def new
    @in_charge = InCharge.new
    @customer_user = CustomerUser.find(params[:id])
  end

  def create
    @in_charge = InCharge.new(in_charge_params)
    @in_charge.save!
    # byebug
    redirect_to admins_customer_users_path
    # byebug
  end

  def show
    @in_charges = InCharge.where(:customeruser_id)
    @in_charge = InCharge.find(params[:id])
    @customer_user = CustomerUser.find(:id => @in_charge.id)
  end

  def edit
    @in_charge = InCharge.find(params[:id])
    @customer_user = CustomerUser.find(@in_charge.customer_user_id)
  end

  def update
    @in_charge = InCharge.find(params[:id])
    @in_charge.update(in_charge_params)
    redirect_to admins_customer_users_path
  end

  def destroy
    @in_charge = InCharge.find(params[:id])
    @in_charge.destroy
    redirect_to admins_in_charges_path
  end

  private
  def in_charge_params
    params.require(:in_charge).permit(
      :customeruser_id,
      :department,
      :name,
      :telephone,
      :email,
      :postal_code,
      :address
    )
  end
end
