class AddDcColToBoard < ActiveRecord::Migration[5.0]
  def change
    add_column :boards, :wirter_pwd, :string
    add_column :boards, :hits, :int
    add_column :boards, :recommend, :int
  end
end
