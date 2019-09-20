class CreateColors < ActiveRecord::Migration[5.1]
  def change
    create_table :colors do |t|
      t.string :color_name
      t.string :color_image

      t.timestamps
    end
  end
end
