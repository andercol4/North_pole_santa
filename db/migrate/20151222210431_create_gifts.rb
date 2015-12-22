class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.belongs_to :child, index: true, foreign_key: true
      t.integer :rating
      t.string :name

      t.timestamps null: false
    end
  end
end
