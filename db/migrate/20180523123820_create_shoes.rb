class CreateShoes < ActiveRecord::Migration[5.1]
  def change
    create_table :shoes do |t|
      t.integer :kind

      t.timestamps
    end
  end
end
