class Veteran < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :comments, through: :posts

  def Veteran.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
