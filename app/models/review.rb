class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true, inclusion: { in: 0..5 }
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: { message: "can't be blank" }
end
