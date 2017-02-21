class ChangeWodDateInLogwods < ActiveRecord::Migration[5.0]
  def self.up
    change_column :logwods, :wod_date, :date
  end

  def self.down
    change_column :logwods, :wod_date, :datetime
  end
end
