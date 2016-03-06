class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :user
      t.references :pioneertype
      t.timestamps
    end
  end
end
