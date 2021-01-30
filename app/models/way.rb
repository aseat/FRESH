class Way < ApplicationRecord
  belongs_to :user
  has_many :users, through: :likes
  has_many :likes
  has_one_attached :image
  has_one_attached :video
  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
  with_options presence: true do
    validates :name
    validates :text
  end
end
