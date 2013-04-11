class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.string :company
      t.string :address
      t.string :city
      t.integer :zip
      t.integer :country
      t.string :info
      t.string :alias_address
      t.integer :home_phone
      t.integer :mobile_phone
      t.integer :months
      t.string :date
      t.integer :gender
      t.timestamps
    end
  end
end
