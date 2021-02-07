class Choice < ApplicationRecord
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :users
  belongs_to :question, foreign_key: 'question_id'
  has_one :answerd
  with_options numericality: { other_than: 1, message: 'Select' }, presence: true do
    validates :choose_id
  end
end