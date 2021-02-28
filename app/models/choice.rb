class Choice < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :users
  belongs_to :question
  belongs_to :choose

  with_options numericality: { other_than: 1, message: 'を選択してください' }, presence: true do
    validates :choose_id
  end
end
