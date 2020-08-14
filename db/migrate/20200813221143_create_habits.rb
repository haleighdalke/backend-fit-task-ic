class CreateHabits < ActiveRecord::Migration[6.0]
  def change
    create_table :habits do |t|
      t.string :activity
      t.string :type

      t.timestamps
    end
  end
end
