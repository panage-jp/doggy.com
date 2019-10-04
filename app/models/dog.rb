class Dog < ApplicationRecord
  belongs_to :type
  belongs_to :user
  has_one_attached :avatar
  validates :name,
    length: { minimum: 1, maximum: 10 },
    presence: true
  validates :profile,
    length: {maximum: 140}
end
