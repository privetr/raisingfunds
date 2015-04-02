class Fund < ActiveRecord::Base
	validates :email, presence: true
	validates :donation_value, presence: true
	validates :firstname, presence: true
	validates :lastname, presence: true
end
