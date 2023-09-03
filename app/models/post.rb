class Post < ApplicationRecord
  validates :hobby, presence: true
  validates :required_time, presence: true
  validates :budget, presence: true
  validates :number_of_people, presence: true
  has_many :likes

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
end