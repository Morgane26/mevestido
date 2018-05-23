class CreateOutfits < ActiveRecord::Migration[5.1]
  def change
    create_table :outfits do |t|
      t.references :proposal, foreign_key: true
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
