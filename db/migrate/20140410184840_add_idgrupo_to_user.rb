class AddIdgrupoToUser < ActiveRecord::Migration
  def change
    add_column :users, :idgrupo, :integer
  end
end
