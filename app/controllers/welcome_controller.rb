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
		160 * @donation_sum_euro, 170 * @donation_sum_euro
  	]

  	@donation_sum_dong_array = [10 * @donation_sum_dong / 1000,
  		20 * @donation_sum_dong / 1000, 30 * @donation_sum_dong / 1000,
		40 * @donation_sum_dong / 1000, 50 * @donation_sum_dong / 1000,
		60 * @donation_sum_dong / 1000, 70 * @donation_sum_dong / 1000,
		80 * @donation_sum_dong / 1000, 90 * @donation_sum_dong / 1000,
		100 * @donation_sum_dong / 1000, 110 * @donation_sum_dong / 1000,
		120 * @donation_sum_dong / 1000, 130 * @donation_sum_dong / 1000,
		140 * @donation_sum_dong / 1000, 150 * @donation_sum_dong / 1000,
		160 * @donation_sum_dong / 1000, 170 * @donation_sum_dong / 1000
  	]

  end

end
