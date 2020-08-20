class ChangeFrequencyToBeIntegerInGoals < ActiveRecord::Migration[6.0]
  def change
    change_column :goals, :frequency, :integer
  end
end
