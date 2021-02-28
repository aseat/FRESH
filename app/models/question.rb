class Question < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :answerd
  belongs_to :category
  belongs_to :user

  has_many :choice, dependent: :destroy

  has_one_attached :image
  with_options presence: true do
    validates :problem
    validates :commentary
  end
  with_options numericality: { other_than: 1, message: 'を選択してください' }, presence: true do
    validates :category_id
    validates :answerd_id
  end
  def self.search(search)
    if search != ''
      Question.where('problem LIKE(?)', "%#{search}%")
    else
      Question.all
    end
  end
end
