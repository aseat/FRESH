class Waycomment < ApplicationRecord
  belongs_to :way
  belongs_to :user

  with_options presence: true do
    validates :text
  end
end
