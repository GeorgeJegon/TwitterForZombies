class Banner < ActiveRecord::Base
  # SCOPE
  scope :active, ->(n=-1){ where(status: true).limit(n) }
  scope :list_home, ->(n=-1){ active(n).order("RANDOM()") }
end
