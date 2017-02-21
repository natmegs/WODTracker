class CreateLogwods < ActiveRecord::Migration[5.0]
  def change
    create_table :logwods do |t|
      t.string :scaling_used
      t.string :score
      t.text :notes
      t.integer :user_id
      t.integer :wod_id

      t.timestamps
    end
  end
end
