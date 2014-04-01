class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id, null: false
      t.integer :chapstick_id, null: false
      t.integer :stars, null: false

      t.timestamps
    end

    add_index :ratings, [:user_id, :chapstick_id], unique: true
  end
end
