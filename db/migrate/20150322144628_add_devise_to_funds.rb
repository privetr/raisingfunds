class AddDeviseToFunds < ActiveRecord::Migration
  def change
  	add_column :funds, :devise, :string
  end
end
