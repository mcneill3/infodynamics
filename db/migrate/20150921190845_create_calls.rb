class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :phone_number
      t.string :contact_name
      t.datetime :recieved_at
      t.boolean :responded
      t.boolean :is_voicemail
      t.text :message
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
