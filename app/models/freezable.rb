class Freezable < ActiveHash::Base
  self.data = [
    { id: 1,  freezable: '---' },
    { id: 2,  freezable: '冷凍保存OK!' },
    { id: 3,  freezable: '冷凍保存NG.' }
  ]

  include ActiveHash::Associations
  has_many :recipes

  end