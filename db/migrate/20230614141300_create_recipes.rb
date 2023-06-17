class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string     :title,         null: false
      t.string     :allergy,       null: false
      t.integer    :cooking_time,  null: false
      t.string     :ingredients,   null: false
      t.string     :procedure,     null: false
      t.string     :shelf_life,    null: false
      t.integer    :freezable_id,  null: false
      t.text       :word,          null: false
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
