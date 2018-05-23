class CreateDresses < ActiveRecord::Migration[5.1]
  def change
    create_table :dresses do |t|
      t.integer :kind

      t.timestamps
    end
  end
end
