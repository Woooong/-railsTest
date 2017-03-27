class RenameDcColInBoard < ActiveRecord::Migration[5.0]
  def change
    change_column :boards, :hits, :int, :default => 0
    change_column :boards, :recommend, :int, :default => 0
  end
end
