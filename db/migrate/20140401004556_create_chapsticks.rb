class CreateChapsticks < ActiveRecord::Migration
  def change
    create_table :chapsticks do |t|
      t.string :brand, null: false
      t.string :flavor

      t.timestamps
    end
  end
end
