class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many :tags, through: :post_tags
  acts_as_taggable
end
