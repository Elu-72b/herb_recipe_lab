class RecipeHerb < ApplicationRecord
  belongs_to :recipe
  belongs_to :herb
end
