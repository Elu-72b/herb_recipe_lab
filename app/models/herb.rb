class Herb < ApplicationRecord
  # Active Storageで画像を管理する
  has_one_attached :image

  # 許可する画像形式
  ACCEPTED_CONTENT_TYPES = %w[image/jpeg image/png image/gif image/webp].freeze

  # バリデーション
  validates :name, presence: true  # ハーブ名は必須

  validates :image,
    content_type: ACCEPTED_CONTENT_TYPES,
    size: { less_than_or_equal_to: 5.megabytes },
    allow_blank: true  # 画像なしでも保存OK
end