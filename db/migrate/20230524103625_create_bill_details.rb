class CreateBillDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :bill_details do |t|
      t.integer :BillID
      t.string :NameCus
      t.integer :Phonenumber
      t.text :Product
      t.integer :TotalBill

      t.timestamps
    end
  end
end
