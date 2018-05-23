class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.references :user, foreign_key: true
      t.references :color, foreign_key: true
      t.references :wearable, polymorphic: true, index: true
      t.integer :usage
      t.integer :season

      t.timestamps
    end
  end
end
