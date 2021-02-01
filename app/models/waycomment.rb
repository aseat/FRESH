class Waycomment < ApplicationRecord
  belongs_to :way
  belongs_to :user
end
