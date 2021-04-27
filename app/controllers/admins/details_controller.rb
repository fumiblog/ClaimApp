class Admins::DetailsController < ApplicationController

  def new
    @detail = Detail.new
  end

  def create
    @detail = Detail.new(detail_params)
    @detail.save!
    redirect_to admins_estimates_path
  end

  private
  def detail_params
    params.requre(:detail).permit(
      :estimate_id,
      :genre_id,
      :product,
      :model,
      :amount,
      :unitprice,
      :remark,
      :general_remark
    )
  end

end
