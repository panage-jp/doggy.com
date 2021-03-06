class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name,
    length: { minimum: 1, maximum: 10 },
    presence: true
  
  validates :introduction,
    length: {maximum: 140}



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many :posts
  has_many :dogs
  has_many :comments
  has_many :likes
end
