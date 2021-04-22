class Admins::CustomerUsersController < ApplicationController
  def index
    @customer_users = CustomerUser.all
    @customer_user = CustomerUser.new
    @in_charges = InCharge.all
  end

  def create
    @customer_user = CustomerUser.new(customer_user_params)
    @customer_user.customer_id = 1
    @customer_user.save
    redirect_to admins_customer_users_path
  end

  def edit
    @customer_user = CustomerUser.find(params[:id])
  end

  def update
    @customer_user = CustomerUser.find(params[:id])
    @customer_user.update(customer_user_params)
    redirect_to admins_customer_users_path
  end

  def destroy
    @customer_user = CustomerUser.find(params[:id])
    @customer_user.destroy
    redirect_to admins_customer_users_path
  end
  
  private
  def customer_user_params
    params.require(:customer_user).permit(
      :customer_id,
      :company,
      :postal_code,
      :address,
      :telephone,
      :department,
      :name
    )
  end
end
