class CreateClothes < ActiveRecord::Migration[5.1]
  def change
    create_table :clothes do |t|
      t.text :name
      t.text :jan
      t.integer :r
      t.integer :g
      t.integer :b
      t.integer :color_id

      t.timestamps
    end
  end
end
