class CreateBabynames < ActiveRecord::Migration
  def change
    create_table :babynames do |t|
      t.string :list_id
      t.string :first_name_id
      t.string :middle_name_id
      t.timestamps null: false
    end
  end
end
