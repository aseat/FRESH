class Answercategory < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :answers
  belongs_to :answerd
end
