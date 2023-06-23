class ChangeDataCookingTimeToRecipes < ActiveRecord::Migration[6.0]
  def change
    change_column :recipes, :cooking_time, :string
  end
end
