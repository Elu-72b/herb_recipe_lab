class HerbCautionTag < ApplicationRecord
  belongs_to :herb
  belongs_to :caution_tag
end
