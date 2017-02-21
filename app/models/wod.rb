class Wod < ApplicationRecord
  has_many :logwods
  belongs_to :user

  def self.search(search)
    where("title LIKE ? OR details LIKE?", "%#{search}%", "%#{search}%")
  end

end
