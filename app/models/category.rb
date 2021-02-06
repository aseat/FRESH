class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'セメント' },
    { id: 3, name: '鋼材' },
    { id: 4, name: '型枠' },
    { id: 5, name: 'コンクリート構造の設計' },
    { id: 6, name: '硬化コンクリート' },
    { id: 7, name: 'フレッシュコンクリート' },
    { id: 8, name: '混和剤・混和材' },
    { id: 9, name: '暑中コンクリート' },
    { id: 10, name: '寒中コンクリート' },
    { id: 11, name: '水中コンクリート' },
    { id: 12, name: '配（調）合設計' },
    { id: 13, name: '品質管理および検査' },
    { id: 14, name: 'コンクリートの施工' },
    { id: 15, name: '特殊な施工を要するコンクリートの施工	' },
    { id: 16, name: '水' }
  ]

  include ActiveHash::Associations
  has_many :questions
end
