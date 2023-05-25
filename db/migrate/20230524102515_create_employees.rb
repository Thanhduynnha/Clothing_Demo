class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.integer :Em_ID
      t.string :Name
      t.datetime :Dob
      t.string :Hometown
      t.integer :Phonenumber
      t.text :Email

      t.timestamps
    end
  end
end
