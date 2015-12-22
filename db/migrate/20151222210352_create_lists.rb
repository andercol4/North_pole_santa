class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.belongs_to :child, index: true, foreign_key: true
      t.string :name
      t.integer :order

      t.timestamps null: false
    end
  end
end
