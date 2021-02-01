class Like < ApplicationRecord
  belongs_to :user
  belongs_to :way

  validates :user_id, uniqueness: { scope: :way_id }
end
