class WelcomeController < ApplicationController
  def index
  	@funds = Fund.all
  	@donation_sum = 0
  	@funds.each do |f|
  		@donation_sum = @donation_sum + f.donation_value
  	end
  end
end
