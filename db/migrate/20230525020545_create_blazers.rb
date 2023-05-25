class CreateBlazers < ActiveRecord::Migration[7.0]
  def change
    create_table :blazers do |t|

      t.timestamps
    end
  end
end
