class Post < ApplicationRecord
  has_many :comments
  belongs_to :veteran

  has_many :tag_posts
  has_many :tags, through: :tag_posts

end
