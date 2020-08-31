class CreateJournals < ActiveRecord::Migration[6.0]
  def change
    create_table :journals do |t|
      t.string :prompt
      t.string :resp1
      t.string :resp2
      t.string :resp3
      t.integer :user_id

      t.timestamps
    end
  end
end
