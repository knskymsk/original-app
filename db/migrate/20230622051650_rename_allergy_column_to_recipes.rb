class RenameAllergyColumnToRecipes < ActiveRecord::Migration[6.0]
  def change
    rename_column :recipes, :allergy, :allergy_id
  end
end
