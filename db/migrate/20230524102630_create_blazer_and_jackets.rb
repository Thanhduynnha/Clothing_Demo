class CreateBlazerAndJackets < ActiveRecord::Migration[7.0]
  def change
    create_table :blazer_and_jackets do |t|
      t.string :Fullname
      t.text :Description
      t.integer :Quantity
      t.integer :Price
      t.text :Url

      t.timestamps
    end
  end
end
