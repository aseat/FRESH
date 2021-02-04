class Question < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :answerd
  belongs_to :category
  belongs_to :user
  with_options presence: true do
    validates :problem
    validates :commentary
  end
  with_options numericality: { other_than: 1, message: 'Select' }, presence: true do
    validates :category_id
    validates :answer_id
  end
end
