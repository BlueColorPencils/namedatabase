class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :name
      t.string :gender
      t.string :meaning
      t.string :origin
      t.string :diminutives
      t.string :famous
      t.string :royalty
      t.string :interesting
      t.timestamps null: false
    end
  end
end
