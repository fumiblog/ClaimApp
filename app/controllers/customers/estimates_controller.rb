class Customers::EstimatesController < ApplicationController

  def new
    @estimate = Estimate.new
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
      :delivery_time,
      :detail1,
      :genre_id1,
      :product1,
      :model1,
      :amount1,
      :unit_price1,
      :recruit1,
      :detail2,
      :genre_id2,
      :product2,
      :model2,
      :amount2,
      :unit_price2,
      :recruit2,
      :detail3,
      :genre_id3,
      :product3,
      :model3,
      :amount3,
      :unit_price3,
      :recruit3,
      :detail4,
      :genre_id4,
      :product4,
      :model4,
      :amount4,
      :unit_price4,
      :recruit4,
      :detail5,
      :genre_id5,
      :product5,
      :model5,
      :amount5,
      :unit_price5,
      :recruit5,
      :detail6,
      :genre_id6,
      :product6,
      :model6,
      :amount6,
      :unit_price6,
      :recruit6,
      :detail7,
      :genre_id7,
      :product7,
      :model7,
      :amount7,
      :unit_price7,
      :recruit7,
      :detail8,
      :genre_id8,
      :product8,
      :model8,
      :amount8,
      :unit_price8,
      :recruit8,
      :detail9,
      :genre_id9,
      :product9,
      :model9,
      :amount9,
      :unit_price9,
      :recruit9,
      :detail10,
      :genre_id10,
      :product10,
      :model10,
      :amount10,
      :unit_price10,
      :recruit10,
      :detail11,
      :genre_id11,
      :product11,
      :model11,
      :amount11,
      :unit_price11,
      :recruit11,
      :detail12,
      :genre_id12,
      :product12,
      :model12,
      :amount12,
      :unit_price12,
      :recruit12,
      :detail13,
      :genre_id13,
      :product13,
      :model13,
      :amount13,
      :unit_price13,
      :recruit13,
      :detail14,
      :genre_id14,
      :product14,
      :model14,
      :amount14,
      :unit_price14,
      :recruit14,
      :detail15,
      :genre_id15,
      :product15,
      :model15,
      :amount15,
      :unit_price15,
      :recruit15,
      :detail16,
      :genre_id16,
      :product16,
      :model16,
      :amount16,
      :unit_price16,
      :recruit16,
      :detail17,
      :genre_id17,
      :product17,
      :model17,
      :amount17,
      :unit_price17,
      :recruit17,
      :detail18,
      :genre_id18,
      :product18,
      :model18,
      :amount18,
      :unit_price18,
      :recruit18,
      :detail19,
      :genre_id19,
      :product19,
      :model19,
      :amount19,
      :unit_price19,
      :recruit19,
      :detail20,
      :genre_id20,
      :product20,
      :model20,
      :amount20,
      :unit_price20
    )
  end
end
