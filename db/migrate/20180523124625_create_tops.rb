class CreateTops < ActiveRecord::Migration[5.1]
  def change
    create_table :tops do |t|
      t.integer :kind

      t.timestamps
    end
  end
end
