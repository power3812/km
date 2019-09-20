class CreateColors < ActiveRecord::Migration[5.1]
  def change
    create_table :colors do |t|
      t.string :name
      t.string :image
      t.integer :r
      t.integer :g
      t.integer :b
      t.timestamps
    end
  end
end
