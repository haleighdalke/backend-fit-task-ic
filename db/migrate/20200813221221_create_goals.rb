class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.integer :habit_id
      t.string :frequency
      t.integer :duration
      t.string :duration_type
      t.timestamps
    end
  end
end
