class CreateBottoms < ActiveRecord::Migration[5.1]
  def change
    create_table :bottoms do |t|
      t.integer :kind

      t.timestamps
    end
  end
end
