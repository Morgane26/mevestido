class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.integer :meteo
      t.integer :usage

      t.timestamps
    end
  end
end
