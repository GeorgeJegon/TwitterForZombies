class Banner < ActiveRecord::Base
  # SCOPE
  scope :active, ->(n=-1){ where(status: true).limit(n) }
end
