class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions



  has_one_attached :image
  belongs_to :user
  belongs_to :allergy
  belongs_to :freezable

  validates :title,           presence: true
  validates :photo_cooking,   presence: true
  validates :allergy_id,      presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :cooking_time,    presence: true
  validates :ingredients,     presence: true
  validates :procedure,       presence: true
  validates :shelf_life,      presence: true
  validates :freezable_id,    presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :word,            presence: true
  validates :image,           presence: true
end
