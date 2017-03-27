class AddDcColToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :wirter_pwd, :string
    add_column :comments, :ip, :string
  end
end
