class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :company_name
      t.string :address
      t.datetime :purchased_at

      t.timestamps null: false
    end
  end
end
