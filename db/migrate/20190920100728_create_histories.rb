class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.integer :r
      t.integer :g
      t.integer :b
      t.integer :abs

      t.timestamps
    end
  end
end
