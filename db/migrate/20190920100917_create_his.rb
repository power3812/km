class CreateHis < ActiveRecord::Migration[5.1]
  def change
    create_table :his do |t|
      t.integer :r
      t.integer :g
      t.integer :b

    end
  end
end
