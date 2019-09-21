class CreateJanHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :jan_histories do |t|
      t.text :jan

      t.timestamps
    end
  end
end
