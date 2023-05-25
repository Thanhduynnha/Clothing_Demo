class CreateInforCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :infor_customers do |t|
      t.string :Name_cus
      t.datetime :Dob
      t.integer :Phonenumber
      t.text :Address
      t.integer :Point

      t.timestamps
    end
  end
end
