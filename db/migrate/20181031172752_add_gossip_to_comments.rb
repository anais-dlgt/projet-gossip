class AddGossipToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :gossip, index: true
  end
end
