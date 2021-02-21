class Choose < ActiveHash::Base
  self.data = [
    { id: 1, name: '選んでください。' },
    { id: 2, name: '○' },
    { id: 3, name: '×' }
  ]

  include ActiveHash::Associations
  has_many :questions
end
