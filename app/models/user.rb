class User < ApplicationRecord
  has_many :gossips, dependent: :destroy
  has_many :comments, dependent: :destroy
end
