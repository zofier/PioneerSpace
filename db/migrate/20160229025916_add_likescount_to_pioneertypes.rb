class AddLikescountToPioneertypes < ActiveRecord::Migration
  def change
    add_column :pioneertypes, :likes_count, :integer, default: 0
  end
end
