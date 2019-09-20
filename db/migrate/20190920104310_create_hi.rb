class CreateHi < ActiveRecord::Migration[5.1]
  def change
    create_table :hi do |t|
      t.integer :r
      t.integer :g
      t.integer :b

    end
  end
end
