class Post < ApplicationRecord
  

  validates :hobby, presence: true
  validates :required_time, presence: true
  validates :budget, presence: true
  validates :number_of_people, presence: true
end
