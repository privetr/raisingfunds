class WelcomeController < ApplicationController
  
  def index
  	@funds = Fund.all

  	@donation_sum_dong = 0

  	@funds.each do |f|
  		if f.devise == "euro" || f.devise == "usd"
  			@donation_sum_dong = @donation_sum_dong + f.donation_value * 23000
  		else
  			@donation_sum_dong = @donation_sum_dong + f.donation_value
  		end
  	end

  	@donation_sum_euro = @donation_sum_dong / 23000.0

  	# prepare arrays for highcharts
  	@donation_sum_euro_array = [10 * @donation_sum_euro,
  		20 * @donation_sum_euro, 30 * @donation_sum_euro,
		40 * @donation_sum_euro, 50 * @donation_sum_euro,
		60 * @donation_sum_euro, 70 * @donation_sum_euro,
		80 * @donation_sum_euro, 90 * @donation_sum_euro,
		100 * @donation_sum_euro, 110 * @donation_sum_euro,
		120 * @donation_sum_euro, 130 * @donation_sum_euro,
		140 * @donation_sum_euro, 150 * @donation_sum_euro,
		160 * @donation_sum_euro, 163 * @donation_sum_euro
  	]

  	@donation_sum_dong_array = [10 * @donation_sum_dong,
  		20 * @donation_sum_dong, 30 * @donation_sum_dong,
		40 * @donation_sum_dong, 50 * @donation_sum_dong,
		60 * @donation_sum_dong, 70 * @donation_sum_dong,
		80 * @donation_sum_dong, 90 * @donation_sum_dong,
		100 * @donation_sum_dong, 110 * @donation_sum_dong,
		120 * @donation_sum_dong, 130 * @donation_sum_dong,
		140 * @donation_sum_dong, 150 * @donation_sum_dong,
		160 * @donation_sum_dong , 163 * @donation_sum_dong
  	]

    @funds_display = Fund.order(created_at: :desc).take(5)
    

  end

  # STATIC PAGES
  def sponsors

  end

  def diagonale

  end

  def nicolasprivet

  end

  def association

  end

  def links

  end

  def contacts

  end

  def gallerynicolasprivet

  end

  def adminsitenico
    @funds = Fund.order(created_at: :desc).all   
  end


end
