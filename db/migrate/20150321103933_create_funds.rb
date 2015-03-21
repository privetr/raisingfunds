class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :donation_value
      t.text :comment

      t.timestamps
    end
  end
end
