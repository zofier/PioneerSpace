class CreatePioneertypes < ActiveRecord::Migration
  def change
    create_table :pioneertypes do |t|
      t.text       :catchcopy
      t.string     :title
      t.text       :concept
      t.references :user
      t.timestamps
    end
  end
end
