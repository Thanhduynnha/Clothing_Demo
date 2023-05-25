class CreateSourceOfSupplies < ActiveRecord::Migration[7.0]
  def change
    create_table :source_of_supplies do |t|
      t.integer :S_ID
      t.string :Fullname
      t.integer :Phonenumber
      t.text :Address
      t.text :Email

      t.timestamps
    end
  end
end
