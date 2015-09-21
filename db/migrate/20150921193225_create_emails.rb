class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :email_address
      t.string :email_subject
      t.text :email_text
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
