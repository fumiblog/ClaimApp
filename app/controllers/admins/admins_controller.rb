class Admins::AdminsController < ApplicationController
  def index
    @taxes = Tax.all.order(change_date: "DESC")
    @tax = Tax.new
  end

  def create
    @tax = Tax.new(tax_params)
    @tax.save
    redirect_to admins_admins_path
  end
  
  def destroy
    @tax = Tax.find(params[:id])
    @tax.destroy
    redirect_to admins_admins_path
  end

  private
  def tax_params
    params.require(:tax).permit(
      :change_date,
      :tax
    )
  end

end
