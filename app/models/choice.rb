class Choice < ApplicationRecord
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '○' },
    { id: 3, name: '×' },
  ]

  include ActiveHash::Associations
  has_many :questions
  has_one :answerd
end
