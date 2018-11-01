class User < ApplicationRecord
  has_many :gossips
  has_many :comments
end
