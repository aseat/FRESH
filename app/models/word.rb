class Word < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  with_options presence: true do
    validates :mean
    validates :word
    validates :yomi, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: 'Full-width characters' }
  end
end
