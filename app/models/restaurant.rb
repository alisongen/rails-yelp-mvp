class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: {message: "can't be blank"}
  validates :address, presence:  {message: "can't be blank"}
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], message: "%{value} is not a valid category" }
end
