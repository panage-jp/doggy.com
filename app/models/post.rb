class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many :tags, through: :tweet_tags
end
