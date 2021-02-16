class Answercategory < ApplicationRecord
  has_many :answers
  belongs_to :answerd
end
