class Tag < ApplicationRecord
  has_many :tag_posts
  has_many :posts, through: :posts
end
