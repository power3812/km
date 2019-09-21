class CreateColors < ActiveRecord::Migration[5.1]
  def change
    create_table :colors do |t|
      t.text :name
      t.text :image
      t.integer :r
      t.integer :g
      t.integer :b
      t.integer :abs

      t.timestamps
    end
  end
end
