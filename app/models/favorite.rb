class Favorite < ApplicationRecord
  belongs_to :way
  belongs_to :user

  validates :way_id, uniqueness: { scope: :user_id }
end
