class Response < ApplicationRecord
  belongs_to :answer
  belongs_to :user

  with_options presence: true do
    validates :text
  end
end
