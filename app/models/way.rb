class Way < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_one_attached :video
  with_options presence: true do
    validates :name
    validates :text
  end
end
