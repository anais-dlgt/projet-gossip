class Gossip < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments
end
