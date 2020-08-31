class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.integer :user_id
      t.integer :mood_id
      t.string :tag1
      t.string :tag2
      t.string :tag3
      t.string :tag4
      t.string :tag5

      t.timestamps
    end
  end
end
