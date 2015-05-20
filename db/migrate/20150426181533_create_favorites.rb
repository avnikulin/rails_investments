class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.string :symbol
      t.text :comment

      t.timestamps null: false
    end
  end
end
