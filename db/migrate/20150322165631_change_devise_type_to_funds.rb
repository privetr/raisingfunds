class ChangeDeviseTypeToFunds < ActiveRecord::Migration
  def up
    change_column :funds, :donation_value, :decimal, precision: 15, scale: 2
  end

  def down
    change_column :funds, :donation_value, :integer
  end
end
