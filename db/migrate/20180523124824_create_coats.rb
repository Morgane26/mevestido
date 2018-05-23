class CreateCoats < ActiveRecord::Migration[5.1]
  def change
    create_table :coats do |t|
      t.integer :kind

      t.timestamps
    end
  end
end
