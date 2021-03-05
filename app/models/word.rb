class Word < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  with_options presence: true do
    validates :word
    validates :yomi, format: { with: /[ぁ-んァ-ンー－]/, message: 'はひらがな、カタカナ(全角)で入力してください' }
    validates :mean
  end

  def self.search(search)
    if search != ''
      Word.where('word LIKE(?)', "%#{search}%")
    else
      Word.all
    end
  end
end
