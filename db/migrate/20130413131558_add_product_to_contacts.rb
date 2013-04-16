class AddProductToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :product, :string
  end
end
