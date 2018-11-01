class Gossip < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy
  default_scope { order(created_at: :asc)}
end
