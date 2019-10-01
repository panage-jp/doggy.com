class Tag < ApplicationRecord
  has_many :posts, through: :tweet_tags
end
