class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :gossip, optional: true
end
