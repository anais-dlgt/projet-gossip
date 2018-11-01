class AddColumnTableComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :anonymous_commentor, :string
  end
end
