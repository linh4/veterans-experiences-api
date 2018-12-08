class Tag < ApplicationRecord
  has_many :tag_posts
  has_many :posts, through: :tag_posts

  # def increment_count
  #   count += 1
  # end

  def self.count_tags
    Tag.find_by(tag: self.tag).length
  end
end
