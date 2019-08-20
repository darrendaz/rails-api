class AddLikesToStrains < ActiveRecord::Migration[5.2]
  def change
    add_column :strains, :likes, :integer, :default => 0
  end
end
