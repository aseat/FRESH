class Question < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :answerd
  belongs_to :category
  belongs_to :user

  has_many :choice, dependent: :destroy

  has_one_attached :image
  
   
    validates :problem,presence: true
    validates :commentary,presence: true
    validates :answerd_id,numericality: { other_than: 1, message: 'を選択してください' }, presence: true
  
  def self.search(search)
    if search != ''
      Question.where('problem LIKE(?)', "%#{search}%")
    else
      Question.all
    end
  end
end
