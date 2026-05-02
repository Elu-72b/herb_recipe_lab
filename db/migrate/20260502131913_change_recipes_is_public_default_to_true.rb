class ChangeRecipesIsPublicDefaultToTrue < ActiveRecord::Migration[7.2]
  def up
    change_column_default :recipes, :is_public, from: false, to: true
    Recipe.where(is_public: false).update_all(is_public: true)
  end

  def down
    change_column_default :recipes, :is_public, from: true, to: false
  end
end
