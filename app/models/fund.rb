class Fund < ActiveRecord::Base
	validates :email, presence: true
	validates :donation_value, presence: true
end
