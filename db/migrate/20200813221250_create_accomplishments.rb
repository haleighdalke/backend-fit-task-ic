class CreateAccomplishments < ActiveRecord::Migration[6.0]
  def change
    create_table :accomplishments do |t|
      t.string :date
      t.integer :goal_id
      t.integer :duration
      t.string :duration_type
      t.timestamps
    end
  end
end
