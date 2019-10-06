class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many :tags, through: :post_tags
  has_many :comments
  has_many :likes
  acts_as_taggable
  validates :images,
    presence: true
  validates :text,
    length: {maximum: 200}
end
