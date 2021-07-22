class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ways
  has_many :answers
  has_many :words
  has_many :responses
  has_one_attached :image
  has_many :likes, dependent: :destroy
  has_many :waycomments
  has_many :questions, dependent: :destroy

  with_options presence: true do
    validates :nickname
    validates :text
  end
end
