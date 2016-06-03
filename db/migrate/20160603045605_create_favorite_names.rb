class CreateFavoriteNames < ActiveRecord::Migration
  def change
    create_table :favorite_names do |t|
      t.integer :name_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
