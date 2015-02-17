class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :name
      t.string :address
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
