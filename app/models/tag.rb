class Tag < ApplicationRecord
  has_many :tag_posts
  has_many :posts, through: :posts

  def increment_count
    count += 1
  end
end
