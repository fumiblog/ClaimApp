class Admins::DetailsController < ApplicationController

  def index
    # byebug
    @detail = Detail.new
    if params[:id] == nil
      @estimate = Estimate.finde(@detail.estimate_id)
    else
      @estimate = Estimate.find(params[:id])
    end
    @details = Detail.all
    @genres = Genre.all
  end

  def create
    @detail = Detail.new(detail_params)
    @detail.save!
    redirect_to admins_details_path(id: @detail.estimate_id)
  end

  def destroy
    @detail = Detail.find(params[:id])
    @detail.destroy
    redirect_to admins_details_path(id: @detail.estimate_id)
  end


  private
  def detail_params
    params.require(:detail).permit(
      :estimate_id,
      :genre_id,
      :product,
      :model,
      :amount,
      :unitprice,
      :remark
    )
  end

end
