class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def self.guest
    find_or_create_by!(nickname: 'ゲスト', email: 'guest@gmail.com', text: 'ゲストです。') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
  has_many :ways
  has_many :likes, dependent: :destroy
  has_many :like_ways, through: :likes, source: :way
  has_one_attached :image

  def liked_by?(way_id)
    likes.where(way_id: way_id).exists?
  end

  with_options presence: true do
    validates :nickname
    validates :text
  end
end
