class User < ActiveRecord::Base
  has_secure_password
  validates :password, :presence => { :on => create }
  validates :name, :presence => true
  validates :email, :presence => true
  validates :email, format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, on: :create } 

  has_many :posts
  has_many :taggings
  has_many :tags, through: :taggings
end
