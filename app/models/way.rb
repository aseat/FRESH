class Way < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_one_attached :video
  has_many :likes, dependent: :destroy
  has_many :waycomments, dependent: :destroy
  def liked_by(user)
    Like.find_by(user_id: user.id, way_id: id)
  end

  with_options presence: true do
    validates :name
    validates :text
  end
end
