class Gossip < ApplicationRecord
  belongs_to :user
  has_many :themes
  has_many :tags, through :themes
end
