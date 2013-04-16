class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string :heading
    	t.string :email
    	t.integer :orderid
    	t.string :message		
      t.timestamps
    end
  end
end
