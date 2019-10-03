class Dog < ApplicationRecord
  belongs_to :type
  belongs_to :user
  has_one_attached :avatar
end
