class Customers::CustomersController < ApplicationController
  def edit
    @customer = Customer.find(params[:id])
    # byebug
  end

  def update
    @customer = Customer.find(customer_params)
    @customer.update
    redirect_to customers_customer_path(@customer)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def index
    @customer = Customer.find(current_customer)
  end

  private
  def customer_params
    params.require(:customer).permit(
      :company,
      :postal_code,
      :address,
      :telephone
    )
  end

end
