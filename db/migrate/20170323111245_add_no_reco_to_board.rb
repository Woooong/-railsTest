class AddNoRecoToBoard < ActiveRecord::Migration[5.0]
  def change
    add_column :boards, :no_reco, :int
  end
end
