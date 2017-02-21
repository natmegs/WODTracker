class CreateWods < ActiveRecord::Migration[5.0]
  def change
    create_table :wods do |t|
      t.string :title
      t.text :details
      t.text :scaling_options

      t.timestamps
    end
  end
end
