class HerbFlavorTag < ApplicationRecord
  belongs_to :herb
  belongs_to :flavor_tag
end
