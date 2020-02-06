class Tag < ApplicationRecord
  has_many :themes
  has_many :gossips, through :themes
end
