class AddWodDateToLogwods < ActiveRecord::Migration[5.0]
  def change
    add_column :logwods, :wod_date, :datetime
  end
end
