class Post < ApplicationRecord
  acts_as_taggable
  belongs_to :user
  has_many_attached :images
  has_many :tags, through: :post_tags
end
