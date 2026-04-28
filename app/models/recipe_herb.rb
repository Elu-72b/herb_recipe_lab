class RecipeHerb < ApplicationRecord
  belongs_to :recipe
  belongs_to :herb, optional: true

  # seeds.rbのunit設計に合わせた定義
  enum :unit, { g: 0, teaspoon: 1, piece: 2, individual: 3 }

  validates :quantity, presence: true,
    numericality: { greater_than: 0, message: "配合量は0より大きい値を入力してください" }
  validates :herb_id, presence: { message: "ハーブを選択してください" }, if: -> { custom_herb_name.blank? }
  validates :custom_herb_name, presence: { message: "ハーブ名を入力してください" }, if: -> { herb_id.nil? }
end