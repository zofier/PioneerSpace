class CreatePioneertypeImages < ActiveRecord::Migration
  def change
    create_table :pioneertype_images do |t|
      t.string     :image
      t.references :pioneertype
      t.integer    :status      # 投稿画像 (0:メイン、 1:サブ)
      t.timestamps
    end
  end
end
