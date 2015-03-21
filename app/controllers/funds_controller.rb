class FundsController < ApplicationController
	# PUBLIC methods 
	def index
		@funds = Fund.all
	end


	def show
		@fund = Fund.find(params[:id])
	end


	def new
		@fund = Fund.new
	end

	def edit
	  	@fund = Fund.find(params[:id])
	end


	def create
		@fund = Fund.new(fund_params)
		
		if @fund.save
			redirect_to @fund
		else
			render 'new'
		end
	end

	def update
		@fund = Fund.find(params[:id])

		if @fund.update(fund_params)
			redirect_to @fund
		else
			render 'edit'
		end
	end


	def destroy
		@fund = Fund.find(params[:id])
		@fund.destroy

		redirect_to funds_path
	end

	# PRIVATE methods
	private
		def fund_params
		params.require(:fund).permit(:firstname, :lastname, :email, :donation_value, :comment)
		end
end
