class Response < ApplicationRecord
  belongs_to :answer
  belongs_to :user
  
  with_options presence: true do
    validates :title
    validates :question
  end
end
