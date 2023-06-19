class Allergy < ActiveHash::Base
  self.data = [
    { id: 1,  allergy: '---' },
    { id: 2,  allergy: 'かに' },
    { id: 3,  allergy: 'えび' },
    { id: 4,  allergy: '落花生' },
    { id: 5,  allergy: 'そば' },
    { id: 6,  allergy: '小麦' },
    { id: 7,  allergy: '牛乳' },
    { id: 8,  allergy: '卵' },
    { id: 9,  allergy: '鶏肉' },
    { id: 10, allergy: '豚肉' },
    { id: 11, allergy: '牛肉' },
    { id: 12, allergy: 'ゼラチン' },
    { id: 13, allergy: 'サケ' },
    { id: 14, allergy: 'サバ' },
    { id: 15, allergy: 'いか' },
    { id: 16, allergy: 'イクラ' },
    { id: 17, allergy: '甲殻類' },
    { id: 18, allergy: '魚介類' },
    { id: 19, allergy: 'りんご' },
    { id: 20, allergy: 'オレンジ' },
    { id: 21, allergy: 'もも' },
    { id: 22, allergy: 'キウイ' },
    { id: 23, allergy: 'バナナ' },
    { id: 24, allergy: '山芋' },
    { id: 25, allergy: '松茸' },
    { id: 26, allergy: 'くるみ' },
    { id: 27, allergy: 'ごま' },
    { id: 28, allergy: 'カシューナッツ' },
    { id: 29, allergy: '大豆' }
  ]

  include ActiveHash::Associations
  has_many :recipes

  end